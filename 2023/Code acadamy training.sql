--Lesson 1 Manipulation part 1/10
--SQL: Structured Query Language

--part 2
--Relational database: a database of organized information in multiple tables
--Data types: INTEGER, TEXT, DATE, REAL 

--part 3
--all statements end with ;
SELECT * 
  FROM celebs;

--part 4
--CREATE TABLE makes a new table
CREATE TABLE movies(
  id INTEGER,
  name TEXT,
  genre TEXT,
  year INTEGER);

--part 5
--INSERT INTO adds a new row of data into the table
--VALUES what values to add based on pattern recognition
INSERT INTO movies (
  id, name, genre, year)
  VALUES (32, Spawn, Action, 1997)

--part 6
--SELECT selects which columns we are querying data from
--FROM selects which tables to query data from
SELECT name 
  FROM movies;

--Lesson 2 Queries part 1/14
-- The * star character selects everything from the tables given
SELECT * 
  FROM movies;

--part 2
SELECT name, genre 
  FROM movies;
SELECT name, genre, year 
  FROM movies;

--part 3
--AS renames a table or column
SELECT name AS "title" 
  FROM movies;
SELECT imdb_rating AS 'IMDb' 
  FROM movies;

--part 4
--DISTINCT removes duplicate entries FROM the results
SELECT DISTINCT genre 
  FROM movies;
SELECT DISTINCT year 
  FROM movies;

--part 5
--WHERE restricts the query with a condition
SELECT * 
  FROM movies 
  WHERE imdb_rating < 5;
SELECT * 
  FROM movies 
  WHERE year > 2014;

--part 6
--LIKE creates a pattern to find. It is a more flexible equals
--  % represents 0-multiple characters
--  _ represents 1 character
SELECT * 
  FROM movies 
  WHERE name LIKE 'Se_en';
SELECT * 
  FROM movies 
  WHERE name LIKE "%vatar%";

--part 7
--This part teaches the % opperator on LIKE
SELECT * 
  FROM movies 
  WHERE name LIKE "%man%";
SELECT * 
  FROM movies 
  WHERE name LIKE 'The%';

--part 8
--IS NULL returns NULL entries in the query
--IS NOT NULL returns entries in the query
SELECT name 
  FROM movies 
  WHERE imdb_rating IS NULL;

--part 9
--BETWEEN a way to combine > and < in one statement that works on numbers and letters. 
--  Note BETWEEN 'A' AND 'J' will return Andy but not Judy, 
--  it will return J though.
SELECT * 
  FROM movies 
  WHERE name BETWEEN 'D' AND 'G';
SELECT * 
  FROM movies 
  WHERE year BETWEEN 1970 and 1979;

--part 10
--AND finds info true to both search parameters
SELECT *
  FROM movies
  WHERE year < 1985
  AND genre = 'horror';


--part 11
--OR finds all information included in both search parameters
SELECT *
  FROM movies
  WHERE genre = 'romance'
    OR genre = 'comedy';

--part 12
--ORDER BY sorts the resulting query by a column 
--  ASC 1-9 and A-Z, DESC 9-1 and Z-A. ASC is default
SELECT name, year, imdb_rating
  FROM movies
  ORDER BY imdb_rating DESC;

--part 13
--LIMIT reduces the query to x results, 
--  it always goes at the end of the query
SELECT * 
  FROM movies 
  ORDER BY imdb_rating DESC 
  LIMIT 3;

--part 14
--CASE creates outputs based on inputs, it is used in SELECT, 
--  it is a direct translation of if then statements
--WHEN like WHERE but only inside CASE statements
--THEN proceeds a WHEN statement and gives data to add 
--ELSE same as else in other languages
--END ends the CASE statement
SELECT name, 
  CASE
  	WHEN genre = 'romance' THEN 'fun'
    WHEN genre = 'comedy' THEN 'fun'
    ELSE 'serious'
  END AS 'mood'

  FROM movies;