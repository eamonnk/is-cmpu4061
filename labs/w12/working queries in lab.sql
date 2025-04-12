-- SELECT movies.movie_title, languages.language_name FROM movies LEFT JOIN languages ON language_id=movie_language

-- SELECT movies.movie_title, languages.language_name FROM movies INNER JOIN languages ON languages.language_id=movie_language

-- SELECT COUNT(*) AS "movies with language defined" FROM movies LEFT JOIN languages ON languages.language_id=movies.movie_language;
-- SELECT movies.movie_title,movies.movie_length FROM movies
-- WHERE movies.movie_length=(
-- SELECT MAX(movies.movie_length) FROM movies)
-- ------------------------
-- SELECT movies.movie_title, actors.actor_last_name
-- FROM movies INNER JOIN acting USING(movie_id)
-- INNER JOIN actors USING(actor_id)
-- WHERE actors.actor_last_name REGEXP "CHASE"

-- SELECT movies.movie_title FROM movies
-- INNER JOIN acting USING(movie_id) INNER JOIN (
-- SELECT actor_id FROM actors
-- WHERE actors.actor_last_name ="CHASE") as T2
-- ON acting.actor_id=T2.actor_id

-- Lab 12 - Task 2
-- query 1
-- SELECT * FROM customers_table WHERE customers_table.last_name LIKE 'M%' OR
-- customers_table.last_name LIKE 'F%' OR 
-- customers_table.last_name LIKE 'R%' OR
-- customers_table.last_name LIKE 'T%' ;

-- query 2
-- SELECT * FROM customers_table WHERE customers_table.last_name LIKE 'R%'
-- AND customers_table.email like'%gmail%';

-- query 
select movies.movie_title, min(movies.movie_length) from movies
-- select min(movies.movie_length) FROM movies AS 'MOVIE MIN LENGTH'


SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE customers;
SET FOREIGN_KEY_CHECKS = 1;
SHOW VARIABLES LIKE 'foreign_key_checks';
SELECT
    TABLE_NAME,
    COLUMN_NAME,
    CONSTRAINT_NAME,
    REFERENCED_TABLE_NAME,
    REFERENCED_COLUMN_NAME
FROM
    INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE
    TABLE_SCHEMA = 'your_database_name' -- Replace with your database name
    AND TABLE_NAME = 'Bookings'; -- Replace with your table name



This command will delete all rows in the customers table but keep the table structure (columns, constraints, etc.) intact.
