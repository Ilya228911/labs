-- Создание таблицы "кафедра"
CREATE TABLE кафедра (
  id SERIAL PRIMARY KEY,
  название VARCHAR(255),
  деканат VARCHAR(255)
);

-- Создание таблицы "группа"
CREATE TABLE группа (
  id SERIAL PRIMARY KEY,
  название VARCHAR(255),
  кафедра_id INTEGER REFERENCES кафедра (id)
);

-- Создание таблицы "студент"
CREATE TABLE студент (
  id SERIAL PRIMARY KEY,
  имя VARCHAR(255),
  паспортные_данные VARCHAR(255),
  группа_id INTEGER REFERENCES группа (id)
);

-- Заполнение таблицы "кафедра"
INSERT INTO кафедра (название, деканат)
VALUES ('Кафедра 1', 'Деканат 1'),
       ('Кафедра 2', 'Деканат 2');

-- Заполнение таблицы "группа"
INSERT INTO группа (название, кафедра_id)
VALUES ('Группа 1', 1),
       ('Группа 2', 1),
       ('Группа 3', 2),
       ('Группа 4', 2);

-- Заполнение таблицы "студент"
INSERT INTO студент (имя, паспортные_данные, группа_id)
VALUES ('Студент 1', 'Паспорт 1', 1),
       ('Студент 2', 'Паспорт 2', 1),
       ('Студент 3', 'Паспорт 3', 2),
       ('Студент 4', 'Паспорт 4', 2),
       ('Студент 5', 'Паспорт 5', 3),
       ('Студент 6', 'Паспорт 6', 3),
       ('Студент 7', 'Паспорт 7', 4),
       ('Студент 8', 'Паспорт 8', 4),
       ('Студент 9', 'Паспорт 9', 4),
       ('Студент 10', 'Паспорт 10', 4);

-- Вывод содержимого таблицы "кафедра"
SELECT * FROM кафедра;

-- Вывод содержимого таблицы "группа"
SELECT * FROM группа;

-- Вывод содержимого таблицы "студент"
SELECT * FROM студент;
