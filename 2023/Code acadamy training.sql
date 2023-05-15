--Lesson 1 part 1/15
-- The * star character selects everything from the tables given
--SELECT * FROM movies;

--part 2
--SELECT name, genre FROM movies;
--SELECT name, genre, year FROM movies;

--part 3
--AS renames a table or column
--SELECT name AS "title" FROM movies;
--SELECT imdb_rating AS 'IMDb' FROM movies;

--part 4
--DISTINCT removes duplicate entries FROM the results
--SELECT DISTINCT genre FROM movies;
--SELECT DISTINCT year FROM movies;

--part 5
--WHERE is sql's version of if, it restricts the query
--SELECT * FROM movies WHERE imdb_rating < 5;
--SELECT * FROM movies WHERE year > 2014;

