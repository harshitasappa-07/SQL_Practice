CREATE TABLE IF NOT EXISTS movies(
    id INTEGER PRIMARY KEY,
    title TEXT,
    director TEXT,
    year INTEGER,
    length_minutes INTEGER
);
INSERT INTO movies (id,title,director,year,length_minutes) VALUES
(1,	'Toy Story -1','John Lasseter','1995',	'81'),
(2	,'A Bugs Life','John Lasseter','1998','95'),
(3,	'Toy Story-2','John Lasseter','1999','93'),
(4	,'Monsters, Inc.','	Pete Docter',	'2001'	,'92'),
(5,	'Finding Nemo',	'Andrew Stanton',	'2003',	'107');
SELECT * FROM movies;
SELECT title FROM movies;
SELECT title,director FROM movies;
SELECT director,year FROM movies;
SELECT id,title,director,year,length_minutes FROM movies;
SELECT * FROM movies WHERE id=4;
SELECT * FROM movies WHERE year BETWEEN 2000 AND 2003;
SELECT * FROM movies WHERE year NOT BETWEEN 2000 AND 2003;
SELECT Title,year FROM movies WHERE Id <=3;
SELECT * FROM movies WHERE Title LIKE 'TOY STORY%';
SELECT title,director ,year FROM movies WHERE Director ='John Lasseter';
SELECT title,director FROM movies WHERE Director != 'John Lasseter';
SELECT DISTINCT title FROM movies ORDER BY title ASC;
SELECT title, year FROM movies ORDER BY year DESC LIMIT 4;
SELECT DISTINCT title FROM movies ORDER BY title ASC;
SELECT title, year FROM movies ORDER BY year DESC LIMIT 4;
SELECT title FROM movies ORDER BY title ASC LIMIT 3;
SELECT title FROM movies ORDER BY title ASC LIMIT 5 OFFSET 5;