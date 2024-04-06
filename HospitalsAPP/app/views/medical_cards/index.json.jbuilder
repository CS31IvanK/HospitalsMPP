# frozen_string_literal: true

json.array! @medical_cards, partial: 'medical_cards/medical_card', as: :medical_card
