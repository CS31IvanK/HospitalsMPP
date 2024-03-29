# Система управління лікарнями та лікарями

## Короткий опис проекту
Цей проект - це веб-додаток для управління інформацією про лікарні та лікарів. Він надає можливість користувачам реєструватися, увійти в систему, переглядати інформацію про доступні лікарні та лікарів, додавати нові записи про лікарні та лікарів, редагувати та видаляти існуючі записи. Користувачі можуть переглядати список лікарень, їх адреси та контактні дані, а також переглядати список лікарів, їхні спеціалізації та контактні дані. Лікарі пов'язані з певними лікарнями. Увійшовши до системи, користувач може переглядати свій статус, а також мати доступ до функціоналу керування лікарнями та лікарями.

## Посилання по документу
### Посилання на головні файли
- [index.html.erb](app/views/home/index.html.erb) - Вид, для відображення головної сторінки користувачам, які вже увійшли в систему та тим, хто ще ні.
- [index.html.erb](app/views/hospitals/index.html.erb) - Вид для відображення списку лікарень.
- [index.html.erb](app/views/doctors/index.html.erb) - Вид для відображення списку лікарів.

### Котролери
- [doctors_controller.rb](app/controllers/doctors_controller.rb) - Контролер для лікарів.
- [hospitals_controller.rb](app/controllers/hospitals_controller.rb) - Контролер, відповідальний за лікарні.

### Додаткові файли
- [routes.rb](config/routes.rb) - Файл маршрутів.
- [Gemfile](Gemfile) - Список гемів, необхідних для проекту.
- [README.md](README.md) - Це файл, який ви читаєте зараз.

### Фрагменти коду для відображення елементів
- [_doctor.html.erb](app/views/doctors/_doctor.html.erb) - Відображення інформації про окремого лікаря.
- [_hospital.html.erb](app/views/hospitals/_hospital.html.erb) - Відображення інформації про окрему лікарню.

## API документація
| Метод | Шлях                     | Опис                                         |
|-------|--------------------------|----------------------------------------------|
| GET   | /hospitals               | Отримати список всіх лікарень                |
| GET   | /hospitals/:id           | Отримати інформацію про конкретну лікарню    |
| POST  | /hospitals               | Створити нову лікарню                        |
| PUT   | /hospitals/:id           | Оновити інформацію про конкретну лікарню     |
| DELETE| /hospitals/:id           | Видалити конкретну лікарню                   |
| GET   | /doctors                 | Отримати список всіх лікарів                 |
| GET   | /doctors/:id             | Отримати інформацію про конкретного лікаря   |
| POST  | /doctors                 | Створити нового лікаря                       |
| PUT   | /doctors/:id             | Оновити інформацію про конкретного лікаря    |
| DELETE| /doctors/:id             | Видалити конкретного лікаря                  |

## Інструкції щодо встановлення та запуску проекту
### Встановлення
1. Склонуйте репозиторій з GitHub.
2. Встановіть всі необхідні геми, використовуючи `bundle install`.
3. Налаштуйте базу даних, запустивши `rails db:create` та `rails db:migrate`.
4. Запустіть локальний сервер за допомогою `rails server`.
5. Відкрийте ваш браузер та перейдіть на `http://localhost:3000`.

### Використання
1. Зареєструйтеся або увійдіть до системи.
2. Перейдіть на сторінку керування лікарнями або лікарями.
3. Перегляньте інформацію про наявні лікарні та лікарів, створіть нові записи, відредагуйте або видаліть існуючі.
