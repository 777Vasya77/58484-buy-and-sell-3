
INSERT INTO types(title) VALUES
    ('offer'),
    ('sale');
INSERT INTO users(email, password_hash, first_name, last_name, avatar) VALUES
    ('ivanov@example.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'Иван', 'Иванов', 'avatar1.jpg'),
    ('petrov@example.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'Пётр', 'Петров', 'avatar2.jpg');
INSERT INTO categories(name) VALUES
    ('Книги'),
    ('Разное'),
    ('Посуда'),
    ('Игры'),
    ('Животные'),
    ('Журналы'),
    ('Книги new'),
    ('Разное new'),
    ('Посуда new'),
    ('Игры new'),
    ('Животные new'),
    ('Журналы new');
ALTER TABLE offers DISABLE TRIGGER ALL;
INSERT INTO offers(title, description, type_id, sum, picture, user_id) VALUES
    ('Куплю детские санки new.', 'Мой дед не мог её сломать. При покупке с меня бесплатная доставка в черте города. Две страницы заляпаны свежим кофе new. Кажется, что это хрупкая вещь new. Товар в отличном состоянии.', '1', 85405, 'item11.jpg', 1),
    ('Продам отличную подборку фильмов на VHS.', 'Две страницы заляпаны свежим кофе new. Если найдёте дешевле — сброшу цену. Таких предложений больше нет new! Две страницы заляпаны свежим кофе. Кажется, что это хрупкая вещь.', '1', 21658, 'item04.jpg', 1),
    ('Куплю детские санки new.', 'Кажется, что это хрупкая вещь new. Кому нужен этот новый телефон, если тут такое... Две страницы заляпаны свежим кофе new. Если найдёте дешевле — сброшу цену. Не пытайтесь торговаться. Цену вещам я знаю new.', '1', 94487, 'item11.jpg', 2),
    ('Куплю породистого кота.', 'Бонусом отдам все аксессуары. При покупке с меня бесплатная доставка в черте города. Кому нужен этот новый телефон, если тут такое... Таких предложений больше нет! Таких предложений больше нет new!', '1', 3896, 'item14.jpg', 2),
    ('Куплю породистого кота.', 'Если товар не понравится — верну всё до последней копейки. Мой дед не мог её сломать. Это настоящая находка для коллекционера! Кажется, что это хрупкая вещь. Кому нужен этот новый телефон, если тут такое...', '1', 13811, 'item16.jpg', 1),
    ('Куплю детские санки new.', 'Не пытайтесь торговаться. Цену вещам я знаю. Кажется, что это хрупкая вещь. Не пытайтесь торговаться. Цену вещам я знаю new. Если найдёте дешевле — сброшу цену. Две страницы заляпаны свежим кофе new.', '2', 77403, 'item07.jpg', 1),
    ('Продам книги Стивена Кинга new.', 'Кому нужен этот новый телефон, если тут такое new... Кому нужен этот новый телефон, если тут такое... Мой дед не мог её сломать new. Товар в отличном состоянии. Продаю с болью в сердце...', '2', 16363, 'item08.jpg', 2),
    ('Куплю породистого кота.', 'Бонусом отдам все аксессуары. Если найдёте дешевле — сброшу цену. Таких предложений больше нет! Таких предложений больше нет new! Мой дед не мог её сломать new.', '1', 88119, 'item09.jpg', 2),
    ('Куплю антиквариат new.', 'Не пытайтесь торговаться. Цену вещам я знаю new. Продаю с болью в сердце... Кому нужен этот новый телефон, если тут такое new... Пользовались бережно и только по большим праздникам. При покупке с меня бесплатная доставка в черте города new.', '2', 62843, 'item02.jpg', 1),
    ('Продам отличную подборку фильмов на VHS new.', 'Мой дед не мог её сломать new. При покупке с меня бесплатная доставка в черте города new. При покупке с меня бесплатная доставка в черте города. Даю недельную гарантию. Если найдёте дешевле — сброшу цену new.', '2', 71800, 'item03.jpg', 1);
ALTER TABLE offers ENABLE TRIGGER ALL;
ALTER TABLE offer_categories DISABLE TRIGGER ALL;
INSERT INTO offer_categories(offer_id, category_id) VALUES
    (1, 2),
    (1, 3),
    (2, 2),
    (2, 3),
    (3, 4),
    (4, 2),
    (4, 4),
    (5, 2),
    (6, 2),
    (6, 4),
    (6, 3),
    (7, 3),
    (8, 2),
    (8, 4),
    (9, 3),
    (9, 2),
    (10, 2),
    (10, 3);
ALTER TABLE offer_categories ENABLE TRIGGER ALL;
ALTER TABLE comments DISABLE TRIGGER ALL;
INSERT INTO COMMENTS(text, user_id, offer_id) VALUES
    ('Неплохо, но дорого', 1, 1),
    ('Совсем немного... Оплата наличными или перевод на карту? Почему в таком ужасном состоянии? А где блок питания Продаю в связи с переездом. Отрываю от сердца. Вы что?! В магазине дешевле. Неплохо, но дорого А сколько игр в комплекте?', 2, 1),
    ('Продаю в связи с переездом. Отрываю от сердца. Неплохо, но дорого С чем связана продажа? Почему так дешёво?', 2, 1),
    ('Совсем немного... Оплата наличными или перевод на карту? Продаю в связи с переездом. Отрываю от сердца. С чем связана продажа? Почему так дешёво? А сколько игр в комплекте? А где блок питания', 2, 2),
    ('Почему в таком ужасном состоянии? Продаю в связи с переездом. Отрываю от сердца. А сколько игр в комплекте?', 2, 2),
    ('Продаю в связи с переездом. Отрываю от сердца. А где блок питания Вы что?! В магазине дешевле. Оплата наличными или перевод на карту?', 1, 2),
    ('Неплохо, но дорого Совсем немного... А сколько игр в комплекте? А где блок питания С чем связана продажа? Почему так дешёво? Вы что?! В магазине дешевле. Оплата наличными или перевод на карту? Почему в таком ужасном состоянии?', 1, 2),
    ('А сколько игр в комплекте? Оплата наличными или перевод на карту? А где блок питания Почему в таком ужасном состоянии? Совсем немного... Продаю в связи с переездом. Отрываю от сердца. Вы что?! В магазине дешевле.', 1, 3),
    ('А где блок питания', 2, 3),
    ('Продаю в связи с переездом. Отрываю от сердца. Неплохо, но дорого С чем связана продажа? Почему так дешёво? Оплата наличными или перевод на карту? А сколько игр в комплекте? Вы что?! В магазине дешевле.', 1, 4),
    ('С чем связана продажа? Почему так дешёво?', 1, 4),
    ('Почему в таком ужасном состоянии? А сколько игр в комплекте? С чем связана продажа? Почему так дешёво? А где блок питания', 1, 4),
    ('Оплата наличными или перевод на карту? С чем связана продажа? Почему так дешёво? Неплохо, но дорого Вы что?! В магазине дешевле.', 1, 5),
    ('Неплохо, но дорого', 2, 5),
    ('Оплата наличными или перевод на карту? Неплохо, но дорого Вы что?! В магазине дешевле. Совсем немного... Продаю в связи с переездом. Отрываю от сердца. А сколько игр в комплекте?', 2, 5),
    ('Почему в таком ужасном состоянии? С чем связана продажа? Почему так дешёво?', 1, 5),
    ('Неплохо, но дорого Вы что?! В магазине дешевле. А где блок питания А сколько игр в комплекте? Совсем немного... Почему в таком ужасном состоянии? С чем связана продажа? Почему так дешёво?', 2, 5),
    ('А сколько игр в комплекте?', 2, 6),
    ('Оплата наличными или перевод на карту? Неплохо, но дорого Совсем немного... Почему в таком ужасном состоянии? А сколько игр в комплекте? Продаю в связи с переездом. Отрываю от сердца. С чем связана продажа? Почему так дешёво?', 2, 6),
    ('Неплохо, но дорого', 1, 6),
    ('А где блок питания Продаю в связи с переездом. Отрываю от сердца.', 2, 6),
    ('Вы что?! В магазине дешевле. С чем связана продажа? Почему так дешёво? А сколько игр в комплекте? Продаю в связи с переездом. Отрываю от сердца.', 1, 7),
    ('Оплата наличными или перевод на карту? Почему в таком ужасном состоянии?', 2, 7),
    ('А сколько игр в комплекте? Вы что?! В магазине дешевле. Совсем немного... Оплата наличными или перевод на карту? Неплохо, но дорого А где блок питания Продаю в связи с переездом. Отрываю от сердца. С чем связана продажа? Почему так дешёво? Почему в таком ужасном состоянии?', 2, 7),
    ('Продаю в связи с переездом. Отрываю от сердца. Оплата наличными или перевод на карту? Почему в таком ужасном состоянии? А где блок питания А сколько игр в комплекте? Совсем немного... Вы что?! В магазине дешевле.', 2, 7),
    ('Оплата наличными или перевод на карту? А где блок питания Продаю в связи с переездом. Отрываю от сердца. Вы что?! В магазине дешевле. Почему в таком ужасном состоянии? А сколько игр в комплекте? Неплохо, но дорого', 1, 8),
    ('Продаю в связи с переездом. Отрываю от сердца. С чем связана продажа? Почему так дешёво? Вы что?! В магазине дешевле.', 1, 8),
    ('А где блок питания Продаю в связи с переездом. Отрываю от сердца.', 1, 8),
    ('Неплохо, но дорого Совсем немного... Продаю в связи с переездом. Отрываю от сердца. Оплата наличными или перевод на карту? С чем связана продажа? Почему так дешёво? А где блок питания А сколько игр в комплекте? Почему в таком ужасном состоянии?', 1, 8),
    ('Почему в таком ужасном состоянии? А сколько игр в комплекте? Вы что?! В магазине дешевле. Продаю в связи с переездом. Отрываю от сердца. Совсем немного... С чем связана продажа? Почему так дешёво?', 1, 8),
    ('А где блок питания', 1, 9),
    ('Вы что?! В магазине дешевле. А сколько игр в комплекте?', 1, 9),
    ('Совсем немного... С чем связана продажа? Почему так дешёво? Оплата наличными или перевод на карту?', 2, 9),
    ('Неплохо, но дорого', 1, 10),
    ('С чем связана продажа? Почему так дешёво?', 2, 10),
    ('Продаю в связи с переездом. Отрываю от сердца. Неплохо, но дорого Вы что?! В магазине дешевле. Совсем немного... С чем связана продажа? Почему так дешёво?', 2, 10),
    ('Вы что?! В магазине дешевле.', 2, 10);
ALTER TABLE comments ENABLE TRIGGER ALL;
