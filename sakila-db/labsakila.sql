use sakila;
-- 1. Display all available tables in the Sakila database.
SHOW TABLES;

-- 2. Retrieve all the data from the tables actor, film and customer.
-- SELECT * FROM ACTOR, FILM, CUSTOMER; -- cross join, not what we want
SELECT * FROM ACTOR;
SELECT * FROM FILM;
SELECT * FROM CUSTOMER;
 
 -- 3. Retrieve the following columns from their respective tables:
 
 -- 3.1 Titles of all films from the film table
SELECT TITLE
FROM FILM;
-- 3.2 List of languages used in films, with the column aliased as language from the language table
SELECT NAME as `language`
FROM LANGUAGE;
-- 3.3 List of first names of all employees from the staff table
SELECT FIRST_NAME
FROM STAFF;
-- 4. Retrieve unique release years.
SELECT DISTINCT RELEASE_YEAR
FROM FILM;
-- 5. Counting records for database insights:
-- Determine the number of stores that the company has.
SELECT COUNT(STORE_ID) AS "NUMBER OF STORES"
FROM STORE;
-- Determine the number of employees that the company has.
SELECT COUNT(STAFF_ID) AS "NUMBER OF EMPLOYEES"
FROM STAFF;
-- 5.3 Determine how many films are available for rent and how many have been rented.
SELECT COUNT(DISTINCT RENTAL_ID) AS "FILMS RENTED"
FROM RENTAL;
-- select * from rental;
SELECT COUNT(DISTINCT INVENTORY_ID) AS "AVAILABLE FOR RENT"
FROM INVENTORY;
-- 5.4 Determine the number of distinct last names of the actors in the database.
SELECT COUNT(DISTINCT LAST_NAME)
FROM ACTOR;
-- 6. Retrieve the 10 longest films.
SELECT DISTINCT length, title AS "Longest Films"
FROM FILM
ORDER BY length DESC
LIMIT 10;
-- 7. Use filtering techniques in order to:
-- 7.1 Retrieve all actors with the first name "SCARLETT".
SELECT *
FROM ACTOR
WHERE FIRST_NAME = "SCARLETT";
-- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
-- Hint: use LIKE operator. More information here.
SELECT * FROM FILM
WHERE title LIKE "%ARMAGEDDON%"
AND length > 100;

-- SELECT * FROM FILM;
-- 7.3 Determine the number of films that include Behind the Scenes content
SELECT COUNT(title) AS "Behind the Scenes"
FROM FILM
WHERE special_features LIKE "%Behind the Scenes%"