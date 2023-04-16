# Блокнот PostgreSQL.

```postgresql
INT - целое число (1, 2, 3).
DECIMAL, NUMERIC - вещественные числа (1.5, 7.2, 2.1).
VARCHAR - Строка длиной до 255 символов.
TEXT - Любая длина строки.
SERIAL - Автоматически нумерует строки.
TIME - Время.
TIMESTAMP - Время и дата.
DATE - Дата.
```

## Запросы. SELECT.

```postgresql
SELECT * FROM table; * - Выводит все поля таблицы.

SELECT (название поля) FROM table; - Выводит запрошенное поле таблицы.

SELECT (название поля) AS (новое название поля) FROM table; - Меняет название поля при выводе таблицы.

SELECT DISTINCT (название поля) FROM table; - Объединение дублей.

SELECT COUNT (название поля) FROM table; - Подсчет строк полей.

SELECT COUNT (DISTINCT название поля) FROM table; - Объеденить дубли и подсчитать количество строк.

SELECT (название поля) FROM table
WHERE city = 'Ufa'; - Оператор WHERE условие вывода данных. (AND, OR, IN, NOT, LIKE, BETWEEN, IS, <, > , =)

SELECT * FROM table
WHERE (название поля) BETWEEN 20 AND 40; - Оператор BETWEEN интервал (20 - 40) вклчительно.

SELECT * FROM table
WHERE country IN ('Mexico', 'USA', 'Russia'); - С оператор IN  можно просто перечислить через запятую нужные данные для вывода.

SELECT * FROM table
WHERE country NOT IN ('USA'); - Оператор NOT исключить из выводимых данных.

SELECT * FROM table
ORDER BY (название поля) ASC или DESC; Оператор ORDER BY сортировка (ASC - по возрастанию, DESC - по убыванию).

SELECT MIN (поле) FROM table; - MIN минимальное значение в выбранном поле.
SELECT MAX (поле) FROM table; - MAX максимальное значение в выбранном поле.
SELECT AVG (поле) FROM table; - AVG среднее значение в выбранном поле.
SELECT SUM (поле) FROM table; - SUM сумма значений в выбранном поле.
```

### UPDATE. Изменение данных в таблице.
```postgresql
UPDATE cars                - cars название таблицы.
SET color = 'Black'        - color название поля.
WHERE car_id = 1;          - car_id название поля.

UPDATE product             - product название таблицы.
SET price = price/2        - price название поля.
WHERE price >= 100;        - Условие.
```

### CREATE TABLE. Создание аблицы.
```postgresql
CREATE TABLE customers
(
    id SERIAL PRIMARY KEY,
    FirstName VARCHAR(30),
    LastName VARCHAR(30),
    Email VARCHAR(30),
    Age INT
);
```
### INSERT INTO. Добавление данных в таблицу.
```postgresql
INSERT INTO customers (FirstName, LastName, Email, Age) VALUES ('Имя', 'Фамилия', 'Электронный адрес', Возраст)
Можно еще так:
INSERT INTO customers VALUES 
('Имя', 'Фамилия', 'Электронный адрес', Возраст)
('Имя', 'Фамилия', 'Электронный адрес', Возраст)
('Имя', 'Фамилия', 'Электронный адрес', Возраст)
```

### ALTER TABLE. Добавление поля в таблицу.
```postgresql
ALTER TABLE ИМЯ_ТАБЛИЦЫ
ADD ИМЯ_НОВОГО_ПОЛЯ ТИП_ДАННЫХ;  
```
### DELETE. Удаление данных в таблице.
```postgresql
DELETE FROM Products
WHERE Manufacturer='Apple';  - Например, удалим строки, у которых производитель - Apple.
```
### DROP TABLE. Удаление таблицы.
```postgresql
DROP TABLE (имя таблицы);
```
### END