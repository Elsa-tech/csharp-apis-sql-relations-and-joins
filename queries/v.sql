
SELECT movies.title, movies.score, directors.name FROM movies JOIN directors ON movies.director_id = directors.id WHERE movies.score >= 8