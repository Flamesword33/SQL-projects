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

--part 7
--ALTER TABLE 
--ADD COLUMN
--NULL
ALTER TABLE movies
  ADD COLUMN review_score INTEGER;

--part 8
--UPDATE changes a row in the table
--SET indicates the column to change
UPDATE movies
  SET review_score = '5'
    WHERE genre = 'action';

--part 9
--DELETE FROM deletes rows or tables from the database
DELETE FROM movies
  WHERE name IS NULL;

--part 10
--Constraints: made to an initialization statement to auto delete bad data from a table
--PRIMARY_KEY removes copies in said column, used to uniquly identify the row
--UNIQUE removes copies in said column
--NOT NULL removes rows with incomplete information
--DEFAULT auto fills a default value if no value is present
CREATE TABLE books(
  id INTEGER PRIMARY_KEY,
  title TEXT NOT NULL,
  author TEXT UNIQUE,
  rating INTEGER DEFAULT 3
);
-------------------------------------------------------------


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
------------------------------------------------------------


--Lesson 3 Aggregate Functions part 1/9
--COUNT() counts the number of rows
--SUM() adds the values in a column
--MIN()/MAX()
--AVG()
--ROUND(number_to_round, decimals, operation) unclear what operation means. 
--  W3 mentions default 0 otherwise it truncates the result to the number of decimals 
--  Code acadamy list round as having only 2 values.


--part 2
SELECT COUNT(*)
  FROM fake_apps 
  WHERE price = 0;

--part 3
SELECT SUM(downloads)
  FROM fake_apps;

--part 4
SELECT MIN(downloads)
  FROM fake_apps;
SELECT MAX(price)
  FROM fake_apps;

--part 5
SELECT AVG(price)
  FROM fake_apps;

--part 6
SELECT ROUND(AVG(price),2) 
  FROM fake_apps;

--part 7
--GROUP BY used with aggregate functions, it groups identical data
--  it comes after SELECT but before ORDER BY OR LIMIT
--  GROUP BY allows for meaningful return values from aggrigate functions
SELECT price, COUNT(*) 
  FROM fake_apps
  WHERE downloads > 20000
  GROUP BY price;

SELECT category, SUM(downloads)
  FROM fake_apps
  GROUP BY category;

--part 8
--GROUP BY can also take an integer as a parameter
--  doing so groups by the x column selected
SELECT category, price, AVG(downloads)
  FROM fake_apps
  GROUP BY 1, 2;

--part 9
--HAVING is WHERE but used after a GROUP BY to work on the new sub datasets
SELECT price, 
   ROUND(AVG(downloads)),
   COUNT(*)
  FROM fake_apps
  GROUP BY price
    HAVING COUNT(*) > 10;
---------------------------------------------------------------

