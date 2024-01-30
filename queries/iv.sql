
SELECT movies.title, directors.name, writers.name from movies 
	JOIN writers ON movies.writer_id = writers.id 
	JOIN directors ON movies.director_id = directors.id
	WHERE directors.name LIKE writers.name