--Show the title and director name for all films

SELECT title, people.name AS director 
	FROM movies 
	LEFT JOIN directors on movies.director_id = directors.id 
	LEFT JOIN people on directors.person_id = people.id

--Show the title, director and star name for all films

SELECT title, people_director.name AS director, people_star.name as star 
	FROM movies
	LEFT JOIN directors on movies.director_id = directors.id
	LEFT JOIN people as people_director ON directors.person_id = people_director.id
	LEFT JOIN stars on movies.star_id = stars.id
	LEFT JOIN people as people_star on stars.person_id = people_star.id

--Show the title of films where the director is from the USA

SELECT movies.title, directors.country FROM movies INNER JOIN directors ON movies.director_id = directors.id WHERE directors.country LIKE '%USA%'


--Show only those films where the writer and the director are the same person

SELECT movies.title, people_writer.name AS writer, people_director.name AS director FROM movies
	LEFT JOIN writers ON movies.writer_id = writers.id
	LEFT JOIN people AS people_writer ON writers.person_id = people_writer.id
	LEFT JOIN directors ON movies.director_id = directors.id
	LEFT JOIN people AS people_director ON directors.person_id = people_director.id
	WHERE writers.person_id = directors.person_id

--Show directors and film titles for films with a score of 8 or higher

SELECT movies.title, movies.score, people.name AS director 
	FROM movies LEFT JOIN directors ON movies.director_id = directors.id
	LEFT JOIN people ON directors.person_id = people.id
	WHERE movies.score > 7

--Make at least 5 more queries to demonstrate your understanding of joins, and other relationships between tables.

--1. Show movies and stars with the letter C in their name
SELECT movies.title as movie_title, people.name as name_of_star 
	FROM movies 
	INNER JOIN stars ON movies.star_id = stars.id 
	INNER JOIN people ON stars.person_id = people.id
	WHERE people.name ILIKE '%c%'

--2. Show movies and stars created after the star Leonardos birth (1974)

SELECT movies.title, EXTRACT(YEAR FROM movies.year) as release_year, people.name as star_actor
    FROM movies
    LEFT JOIN stars ON movies.star_id = stars.id
    LEFT JOIN people ON stars.person_id = people.id
    WHERE EXTRACT(YEAR FROM movies.year) > 1974;

--3. Show movies with year and writers with a score under 7 after 1980

SELECT movies.title, 
		EXTRACT(YEAR FROM movies.year) as release_year, 
		movies.score, people.name as writer_name, 
		writers.email as writer_email 
		FROM movies 
		LEFT JOIN writers ON movies.writer_id = writers.id 
		LEFT JOIN people ON writers.person_id = people.id
		WHERE EXTRACT(YEAR FROM movies.year) > 1980 AND movies.score < 7

--4. Show movies with genre historical with stars

SELECT movies.title, movies.genre, people.name as star_actor 
	FROM movies 
	INNER JOIN stars ON movies.star_id = stars.id 
	INNER JOIN people ON stars.person_id = people.id
	WHERE movies.genre LIKE '%Historical%'

--5. Show stars thats born after 1950 and movie and genre that they played.

SELECT people.name as star_actor, stars.dob as date_of_birth, movies.title, movies.genre 
	FROM movies 
	INNER JOIN stars ON movies.star_id = stars.id 
	INNER JOIN people ON stars.person_id = people.id
	WHERE EXTRACT(YEAR FROM stars.dob) > 1950