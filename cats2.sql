-- select id, age and gender fields from table persons
SELECT id, age, gender FROM persons;
-- select all from table persons
SELECT * FROM persons;

SELECT * FROM persons WHERE age=22;

SELECT * FROM persons WHERE gender='Male';

SELECT * FROM persons WHERE gender!='Male';

SELECT * FROM persons WHERE NOT gender='Male';

SELECT * FROM persons WHERE age=22 AND gender='Male';

SELECT * FROM persons WHERE age=22 OR gender='Male';

SELECT * FROM persons WHERE age>=30 AND age<=40;

SELECT * FROM persons WHERE age BETWEEN 30 and 39;

SELECT * FROM persons WHERE age IN (32, 18, 17, 22);

SELECT * FROM persons WHERE first_name LIKE 'A%';

SELECT * FROM persons WHERE first_name LIKE '%x%';

SELECT * FROM persons WHERE first_name LIKE '%No%';

SELECT * FROM persons LIMIT 10;

SELECT * FROM persons LIMIT 10 OFFSET 20;

SELECT * FROM persons ORDER BY age;

SELECT * FROM persons ORDER BY age DESC;

SELECT * FROM persons ORDER BY age DESC, gender, first_name;

SELECT MIN(age) FROM persons;

SELECT MIN(age), MAX(age) FROM persons;

SELECT AVG(age) FROM persons;

SELECT SUM(age) FROM persons;

SELECT COUNT(*) FROM persons;

SELECT MIN(age), MAX(age), AVG(age), SUM(age), COUNT(*) FROM persons WHERE gender='Male';

SELECT MIN(age), MAX(age), AVG(age), SUM(age), COUNT(*)
FROM persons
WHERE gender NOT IN ('Male', 'Female');

SELECT DISTINCT gender FROM persons;

SELECT DISTINCT country FROM persons;

CREATE TABLE cats_new (
    id integer,
    name varchar(255),
    gender varchar(255),
    birthyear integer,
    color varchar(255),
    eyes varchar(255),
    spayed boolean
);

INSERT INTO cats_new (id, name, gender, birthyear, color, eyes, spayed)
VALUES (  1, 'Skibidi', 'Male',   2023,  'Blue',   'Yellow',  true);

UPDATE persons
SET age=76
WHERE id=1;

UPDATE persons
SET age=0, last_name='Kass'
WHERE country='Finland' AND gender='Female';

DELETE FROM persons
WHERE country='Latvia';

DROP TABLE cats; --delete table

CREATE TABLE cats_3 (
    id integer PRIMARY KEY AUTOINCREMENT,
    name varchar(255)NOT NULL,
    gender varchar(255),
    birthyear integer,
    color varchar(255),
    eyes varchar(255),
    spayed boolean,
    description text,
    weight float,
    created datetime
);