CREATE DATABASE notes_db;

USE notes_db;

CREATE TABLE `NOTES`
(
    ID INT(11) NOT NULL AUTO_INCREMENT,
    Title VARCHAR(80) NOT NULL,
    Description TEXT NOT NULL,
    PRIMARY KEY (ID)
);

INSERT INTO notes(title, description) VALUES
(`Schedule`,`Math, English and Data Structures`),
(`List`,`Pens, paper, textbook`),
(`Workout`, `Chest, shoulder, Triceps`),
(`Lame`, `Drink, sleep and eat`);

UPDATE notes SET Description ='Back and Biceps' WHERE title = 'Workout';

DELETE FROM notes WHERE title = 'Lame';

SELECT * FROM notes ORDER BY title DESC;

SELECT* FROM notes ORDER BY id LIMIT 1 OFFSET 1;

SELECT * FROM notes WHERE description LIKE '%a%'
OR description LIKE '%e%'
OR description LIKE '%i%'
OR description LIKE '%o%'
OR description LIKE '%u%'
OR description LIKE '%A%'
OR description LIKE '%E%'
OR description LIKE '%I%'
OR description LIKE '%O%'
OR description LIKE '%I%';
