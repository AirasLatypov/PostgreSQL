-- -- СОЗДАЮ ТАБЛИЦУ ЭТАЖЕЙ В ДОМЕ.
-- CREATE TABLE Home(
--   Home_id SERIAL,
--   Etazh INT,
--   PRIMARY KEY (Home_id)
-- );

-- -- СОЗДАЮ ТАБЛИЦУ ИЗ ЧЕГО ДОМ.
-- CREATE TABLE Material(
--   Material_id SERIAL,
--   Stena VARCHAR,
--   PRIMARY KEY (Material_id)
-- );

-- -- СОЗДАЮ ТАБЛИЦУ ЦВЕТ ДОМА.
-- CREATE TABLE Color(
--   Color_id SERIAL,
--   Cvet VARCHAR,
--   PRIMARY KEY (Color_id)
-- );

-- СОЗДАЮ ТАБЛИЦУ ХОЗЯИН ДОМА.
-- CREATE TABLE Human(
--   Human_id SERIAL,
--   Name VARCHAR,
--   Home INT,
--   Material INT,
--   Color INT,
--   PRIMARY KEY (Human_id),

--   CONSTRAINT Этаж_Дома
--   FOREIGN KEY (Home)
--   REFERENCES Home(Home_id),

--   CONSTRAINT Материал_Стен
--   FOREIGN KEY (Material)
--   REFERENCES Material(Material_id),

--   CONSTRAINT Цвет_Дома
--   FOREIGN KEY (Color)
--   REFERENCES Color(Color_id)
-- );

-- -- ЗАПОЛНЯЮ ТАБЛИЦУ "ЭТАЖЕЙ В ДОМЕ" (HOME).
-- INSERT INTO Home (Etazh) VALUES (1);
-- INSERT INTO Home (Etazh) VALUES (2);
-- INSERT INTO Home (Etazh) VALUES (3);
-- INSERT INTO Home (Etazh) VALUES (4);

-- -- ЗАПОЛНЯЮ ТАБЛИЦУ "ИЗ ЧЕГО ДОМ" (Material).
-- INSERT INTO Material (Stena) VALUES ('Кирпич');
-- INSERT INTO Material (Stena) VALUES ('Дерево');
-- INSERT INTO Material (Stena) VALUES ('Панельный');
-- INSERT INTO Material (Stena) VALUES ('Глинянный');

-- -- ЗАПОЛНЯЮ ТАБЛИЦУ "ЦВЕТ ДОМА" (Color).
-- INSERT INTO Color (Cvet) VALUES ('Зеленый');
-- INSERT INTO Color (Cvet) VALUES ('Синий');
-- INSERT INTO Color (Cvet) VALUES ('Красный');
-- INSERT INTO Color (Cvet) VALUES ('Белый');
-- INSERT INTO Color (Cvet) VALUES ('Коричневый');
-- INSERT INTO Color (Cvet) VALUES ('Дурацкий');

-- ЗАПОЛНЯЮ ТАБЛИЦУ "ХОЗЯИН ДОМА" Human.
-- INSERT INTO Human (Name, Home, Material, Color) VALUES ('Айбулат', 4, 2, 3);
-- INSERT INTO Human (Name, Home, Material, Color) VALUES ('Салават', 3, 3, 5);
-- INSERT INTO Human (Name, Home, Material, Color) VALUES ('Ильфир', 2, 2, 6);
-- INSERT INTO Human (Name, Home, Material, Color) VALUES ('Азат', 4, 2, 2);
-- INSERT INTO Human (Name, Home, Material, Color) VALUES ('Айрас', 1, 2, 5);

-- --ВЫВОДИМ ТАБЛИЦУ СЛИЯНИЕМ.
-- SELECT
--   --Human.Human_id AS "ID хозяина дома",
--   Human.Name AS "Хозяин Дома",
--   --Human.Home AS "Номер Дома",
--   --Human.Material AS "Номер Материала",
--   --Human.Color AS "Номер Цвета",
--   Home.Etazh AS "Этажей в доме",
--   Material.Stena AS "Материал Стены",
--   Color.Cvet AS "Цвет Дома"

-- FROM Human
--   INNER JOIN Home
--   ON Human.Home = Home.Home_id

--   INNER JOIN Material
--   ON Human.Material = Material.Material_id

--   INNER JOIN color
--   ON Human.Color = Color.Color_id
-- ;

