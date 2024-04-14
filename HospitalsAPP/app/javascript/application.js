// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"



function saveColorState(cardId, color) {
    localStorage.setItem(cardId, color);
}
function saveButtonState(cardId, buttonType) {
    localStorage.setItem(cardId + '-' + buttonType, 'clicked');
}
document.addEventListener("turbo:load", function() {
    document.querySelectorAll('.appointment-card').forEach(function(card) {
        var cardId = card.getAttribute('data-card-id');
        var color = localStorage.getItem(cardId);
        if (color) {
            card.style.backgroundColor = color;
        }

        if (localStorage.getItem(cardId + '-attended') === 'clicked' ||
            localStorage.getItem(cardId + '-not-attended') === 'clicked') {
            card.querySelector('.attendance-buttons').style.display = 'none';
        }
    });

    document.querySelectorAll('.attendance-buttons button').forEach(function(button) {
        button.addEventListener('click', function(event) {
            event.preventDefault();
            var button = event.currentTarget;
            var card = button.closest('.appointment-card');
            var cardId = card.getAttribute('data-card-id');
            var url = button.dataset.url;
            var attended = button.classList.contains('btn-success');
            fetch(url, {
                method: 'PATCH',
                headers: {
                    'Content-Type': 'application/json',
                    'X-CSRF-Token': document.querySelector('meta[name="csrf-token"]').getAttribute('content')
                },
                body: JSON.stringify({ attended: attended })
            })
                .then(response => response.json())
                .then(data => {
                    if (data.attended) {
                        card.style.backgroundColor = '#dff0d8';
                        saveColorState(cardId, '#dff0d8');
                        card.querySelector('.attendance-buttons').style.display = 'none';
                        saveButtonState(cardId, 'attended');
                    } else {
                        card.style.backgroundColor = '#f2dede';
                        saveColorState(cardId, '#f2dede');
                        card.querySelector('.attendance-buttons').style.display = 'none';
                        saveButtonState(cardId, 'not-attended');
                    }
                })
                .catch(error => console.error('Error:', error));
        });
    });
});
import "./channels"
