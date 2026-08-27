-- Active: 1787818200693@@127.0.0.1@3306
DROP TABLE IF EXISTS greetings;
CREATE TABLE greetings (
    id INT PRIMARY KEY,
    message VARCHAR(255)
);
INSERT INTO greetings (id,message) VALUES
(1,'HELLO WORLD'),
 (2,'HARSHITHA'),
 (3,'SQL is Fun'),
 (4,'DATABASE CONNECTED');

SELECT id, message FROM greetings;