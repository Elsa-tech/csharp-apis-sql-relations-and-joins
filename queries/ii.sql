
SELECT movies.title, directors.name as director, stars.name as star 
	FROM movies 	
	JOIN directors ON movies.director_id = directors.id 
	JOIN stars ON movies.star_id = stars.id