CREATE TABLE university(
    university_id SERIAL,
    faculty VARCHAR(100) NOT NULL,
    PRIMARY KEY (university_id)
);

CREATE TABLE from_city(
    city_id SERIAL,
    city VARCHAR(40),
    PRIMARY KEY (city_id)
);

CREATE TABLE classman(
    classman_id SERIAL,
    name VARCHAR(30) NOT NULL,
    age INT NOT NULL,
    university_id INT NOT NULL,
    city_id INT NOT NULL,

    CONSTRAINT student_university
        FOREIGN KEY (university_id)
            REFERENCES university(university_id),

    CONSTRAINT student_city
        FOREIGN KEY (city_id)
            REFERENCES from_city(city_id)
);