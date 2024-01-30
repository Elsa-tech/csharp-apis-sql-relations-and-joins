--1. Show movies and stars with the letter C in their name
--2. Show movies and stars created after the star Leonardos birth (1974)
--3. Show movies with year and writers with a score under 7 after 1980
--4. Show movies with genre historical with stars
--5. Show stars thats born after 1950 and movie and genre that they played.

--SELECT movies.title as movie_title, stars.name as name_of_star FROM movies INNER JOIN stars ON movies.star_id = stars.id WHERE stars.name ILIKE '%c%'

--SELECT movies.title, EXTRACT(YEAR FROM movies.year) as release_year, stars.name as star_actor
--FROM movies
--LEFT JOIN stars ON movies.star_id = stars.id
--WHERE EXTRACT(YEAR FROM movies.year) > 1974;

/*
SELECT movies.title, 
		EXTRACT(YEAR FROM movies.year) as release_year, 
		movies.score, writers.name as writer_name, 
		writers.email as writer_email 
		FROM movies 
		LEFT JOIN 
		writers ON movies.writer_id = writers.id 
		WHERE EXTRACT(YEAR FROM movies.year) > 1980 AND movies.score < 7
*/

--SELECT movies.title, movies.genre, stars.name as star_actor FROM movies INNER JOIN stars ON movies.star_id = stars.id WHERE movies.genre LIKE '%Historical%'

--SELECT stars.name as star_actor, stars.dob as date_of_birth, movies.title, movies.genre from movies INNER JOIN stars ON movies.star_id = stars.id WHERE EXTRACT(YEAR FROM stars.dob) > 1950