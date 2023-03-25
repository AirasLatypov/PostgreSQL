-- INSERT INTO Company (Name, City)
-- VALUES ('Ufanet', 'Ufa');

-- INSERT INTO employee (Firstname, Lastname, Age, Salare, Company_id)
-- VALUES ('Airas', 'Latypov', 38, 120000, 1);


-- CREATE TABLE Company(
--     Company_id SERIAL,
--     Name VARCHAR(30) NOT NULL,
--     City VARCHAR(30) NOT NULL,
--     PRIMARY KEY (Company_id)
-- );
-- -- employee - sotrudniki

-- CREATE TABLE employee(
--     employee_id SERIAL,
--     Firstname   VARCHAR(30) NOT NULL,
--     Lastname    VARCHAR(30) NOT NULL,
--     Age         int NOT NULL,
--     Salare      int NOT NULL,
--     Company_id      int NOT NULL,
--     constraint FK_employee_Company
--     FOREIGN KEY(Company_id) 
--     REFERENCES COMPANY(company_ID)
-- );

