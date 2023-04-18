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
### **- Выводит все поля таблицы.**

```postgresql
SELECT * FROM table; 
```
### **- Выводит запрошенное поле таблицы.**
```postgresql
SELECT (название поля) FROM table;
```
### **AS - Меняет название поля при выводе таблицы.**
```postgresql
SELECT (название поля) AS (новое название поля) FROM table; 
```
### **DISTINCT - Объединение дублей.**
```postgresql
SELECT DISTINCT (название поля) FROM table; 
```
### **COUNT - Подсчет строк полей.**
```postgresql
SELECT COUNT (название поля) FROM table; 
```
### **- Объеденить дубли и подсчитать количество строк.**
```postgresql
SELECT COUNT (DISTINCT название поля) FROM table; 
```
### **WHERE - Фильтрация(условие) вывода данных. (AND, OR, IN, NOT, LIKE, BETWEEN, IS, <, > , =)**
```postgresql
SELECT (название поля) FROM table
WHERE city = 'Ufa';
```
### **BETWEEN - Интервал (20 - 40) вклчительно.**
```postgresql
SELECT * FROM table
WHERE (название поля) BETWEEN 20 AND 40; 
```
### **IN - можно просто перечислить через запятую нужные данные для вывода.**
```postgresql
SELECT * FROM table
WHERE country IN ('Mexico', 'USA', 'Russia'); 
```
### **NOT - исключить из выводимых данных.**
```postgresql
SELECT * FROM table
WHERE country NOT IN ('USA'); 
```
### **ORDER BY - сортировка (ASC - по возрастанию, DESC - по убыванию).**
```postgresql
SELECT * FROM table
ORDER BY (название поля) ASC или DESC; 
```
### **MIN, MAX, AVG, SUM**
```postgresql
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
INSERT INTO customers (FirstName, LastName, Email, Age) VALUES ('Имя', 'Фамилия', 'Электронный адрес', Возраст);
Можно еще так:
INSERT INTO customers VALUES 
('Имя', 'Фамилия', 'Электронный адрес', Возраст)
('Имя', 'Фамилия', 'Электронный адрес', Возраст)
('Имя', 'Фамилия', 'Электронный адрес', Возраст);
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
### LIKE.
```postgresql
     % - placeholder(заполнитель) 0, 1 и более символов.
     _ - ровно 1 любой символ.

LIKE 'U%' - строки начинаются на U.
LIKE '%a' - строки заканчиваются на a.
LIKE '%John%' - строка содержит символы John.
LIKE 'J%n' - J - начало и n - конец.
LIKE '_oh_' - 1 символ, oh, 1 символ.

SELECT LastName, FirstName      - Вывбор полей.
FROM customers                  - Название таблицы.
WHERE FirstName LIKE '%n';      - Поле где данные заканчатся на символ n. Например Stiven.
```
### LIMIT.
```postgresql
SELECT product_name         - Выбор поля.
FROM product                - Название таблицы.
LIMIT 10;                   - Лимит 10 строк. Выведет всего 10 строк.
```
### NULL.
```postgresql
SELECT color                - Выбор поля.
FROM cars                   - Название таблицы.
WHERE color IS NULL;        - Вывести строки где нет данных. NULL
или
WHERE color IS NOT NULL;    - Вывести строки где нет пустых строк, все заполнено.
```
### GROUP BY. Группировка.
```postgresql
SELECT country, COUNT (*)       - Выбор поля + Подсчет.
FROM orders                     - Название таблицы.
WHERE freight > 50              - Условие в поле freight(Груз)
GROUP BY country;               - Группировать вывод по полю country.
```
### HAVING. Фильтрация вторичная после WHERE.
```postgresql
WHERE           - Условие 1.
GROUP BY        - Группировка.
HAVING          - Условие 2. HAVING всегда после GROUP BY и перед ORDER BY.
ORDER BY        - Сортировка.
```
### UNION. Объединение.
```postgresql
Объединение по одинаковым полям. Выводит все страны с обоих таблиц.

SELECT country          - Выбор поля.
FROM customers          - Название таблицы.         
UNION                   - Объединение 2х таблиц. Без дубликатов. UNION ALL - дубликаты остаются.         
SELECT country          - Выбор поля.
FROM employee;          - Название таблицы.
```
### INTERSECT. Пересечение.
```postgresql
Объединение по одинаковым полям. Выводит только те страны, которые присутствуют в обоих таблицах.

SELECT country          - Выбор поля.
FROM customers          - Название таблицы.         
INTERSECT               - Объединение 2х таблиц.          
SELECT country          - Выбор поля.
FROM employee;          - Название таблицы.
```
### EXCEPT. Исключение.
```postgresql
Выводит страны которые есть в customers но нету в employee.

SELECT country          - Выбор поля.
FROM customers          - Название таблицы.         
EXCEPT                  - Объединение 2х таблиц.          
SELECT country          - Выбор поля.
FROM employee;          - Название таблицы.
```
### END