--1. Create Movies Table
CREATE TABLE movies (
    id INTEGER PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    director VARCHAR(255) NOT NULL,
    year INTEGER NOT NULL,
    length_minutes INTEGER NOT NULL
);

-- Insert data into Movies
INSERT INTO movies (id, title, director, year, length_minutes) VALUES
(1, 'Toy Story', 'John Lasseter', 1995, 81),
(2, "A Bug's Life", 'John Lasseter', 1998, 95),
(3, 'Toy Story 2', 'John Lasseter', 1999, 93),
(4, 'Monsters, Inc.', 'Pete Docter', 2001, 92),
(5, 'Finding Nemo', 'Andrew Stanton', 2003, 107),
(6, 'The Incredibles', 'Brad Bird', 2004, 116),
(7, 'Cars', 'John Lasseter', 2006, 117),
(8, 'Ratatouille', 'Brad Bird', 2007, 115),
(9, 'WALL-E', 'Andrew Stanton', 2008, 104),
(10, 'Up', 'Pete Docter', 2009, 101),
(11, 'Toy Story 3', 'Lee Unkrich', 2010, 103),
(12, 'Cars 2', 'John Lasseter', 2011, 120),
(13, 'Brave', 'Brenda Chapman', 2012, 102),
(14, 'Monsters University', 'Dan Scanlon', 2013, 110);

-- 2. Create Boxoffice Table
CREATE TABLE boxoffice (
    movie_id INTEGER PRIMARY KEY,
    rating DECIMAL(3, 1) NOT NULL,
    domestic_sales BIGINT NOT NULL,
    international_sales BIGINT NOT NULL,
    FOREIGN KEY (movie_id) REFERENCES movies(id)
);

-- Insert data into Boxoffice
INSERT INTO boxoffice (movie_id, rating, domestic_sales, international_sales) VALUES
(1, 8.3, 191796233, 170162503),
(2, 7.2, 162798565, 200600000),
(3, 7.9, 245852179, 239163000),
(4, 8.1, 289916256, 272900000),
(5, 8.2, 380843261, 555900000),
(6, 8.0, 261441092, 370001000),
(7, 7.2, 244082982, 217900167),
(8, 8.0, 206445654, 417277164),
(9, 8.5, 223808164, 297503696),
(10, 8.3, 293004164, 438338580),
(11, 8.4, 415004880, 648167031),
(12, 6.4, 191452396, 368400000),
(13, 7.2, 237283207, 301700000),
(14, 7.4, 268492764, 475066843);
SELECT * FROM movies;
SELECT title, (domestic_sales + international_sales) / 1000000 AS gross_sales FROM movies JOIN boxoffice ON movies.id = boxoffice.movie_id;
SELECT title, ratings *10 AS rating_percent FROM movies JOIN boxoffice ON movies.id=boxoffice.movies_id;
SELECT titles ,years FROM movies WHERE year %2=0;

--Order of execution of a Query

SELECT director, COUNT(id) as Num_movies_directed FROM movies GROUP BY director;
SELECT director, SUM(domestic_sales + international_sales) as Cumulative_sales_from_all_movies FROM movies INNER 
JOIN boxoffice ON movies.id = boxoffice.movie_id GROUP BY director;

--Inserting rows

INSERT INTO movies VALUES (4, 'Toy Story 4', 'John Lasseter', 2015, 90);
INSERT INTO boxoffice VALUES (4, 8.7, 340000000, 270000000);

--Updating rows

UPDATE movies SET director = "John Lasseter" WHERE id = 2;
UPDATE movies SET year = 1999 WHERE id = 3;
UPDATE movies SET title = "Toy Story 3", director = "Lee Unkrich" WHERE id = 11;

--Deleting Rows
DELETE FROM movies where year < 2005;
DELETE FROM movies where director = "Andrew Stanton";

--Dropping tables
DROP TABLE Movies;
DROP TABLE BoxOffice;c