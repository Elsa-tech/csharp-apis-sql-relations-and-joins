--drop table movies
--drop table directors
--drop table stars;
--drop table writers;
--drop table people

CREATE TABLE people (
	id serial PRIMARY KEY,
	name VARCHAR(255)
);

INSERT INTO people(name) VALUES     
	('Keir Dullea'),
    ('Mark Hamill'),
    ('Gregory Peck'),
    ('Leonardo DiCaprio'),
    ('Julie Christie'),
    ('Charlton Heston'),
    ('Manos Katrakis'),
    ('Rutger Hauer'),
    ('Juliette Binoche'),
    ('Gerard Depardieu'),
    ('Stanley Kubrick'),
    ('George Lucas'),
    ('Robert Mulligan'),
    ('James Cameron'),
    ('David Lean'),
    ('Anthony Mann'),
    ('Theodoros Angelopoulos'),
    ('Paul Verhoeven'),
    ('Krzysztof Kieslowski'),
    ('Jean-Paul Rappeneau'),
    ('Arthur C Clarke'),
    ('Harper Lee'),
    ('Boris Pasternak'),
    ('Frederick Frank'),
    ('Erik Hazelhoff Roelfzema'),
    ('Edmond Rostand');

CREATE TABLE directors (
	id serial PRIMARY KEY,
	person_id INTEGER REFERENCES people(id),
	country VARCHAR(255)
);


INSERT INTO directors (person_id, country) VALUES
    (11, 'USA'),
    (12, 'USA'),
    (13, 'USA'),
    (14, 'Canada'),
    (15, 'UK'),
    (16, 'USA'),
    (17, 'Greece'),
    (18, 'Netherlands'),
    (19, 'Poland'),
    (20, 'France')
    
    
CREATE TABLE stars (
	id serial PRIMARY KEY,
	person_id INTEGER REFERENCES people(id),
	dob DATE
);   

INSERT INTO stars (person_id, dob) VALUES
    (1, '1936-05-30'),
    (2, '1951-09-25'),
    (3, '1916-04-05'),
    (4, '1974-11-11'),
    (5, '1940-04-14'),
    (6, '1923-10-04'),
    (7, '1908-08-14'),
    (8, '1944-01-23'),
    (9, '1964-03-09'),
    (10, '1948-12-27');
    
CREATE TABLE writers (
	id serial PRIMARY KEY,
	person_id INTEGER REFERENCES people(id),
	email VARCHAR(255)
);


INSERT INTO writers (person_id, email) VALUES 
    (21, 'arthur@clarke.com'),
    (12, 'george@email.com'),
    (22, 'harper@lee.com'),
    (14, 'james@cameron.com'),
    (23, 'boris@boris.com'),
    (24, 'fred@frank.com'),
    (17, 'theo@angelopoulos.com'),
    (25, 'erik@roelfzema.com'),
    (19, 'email@email.com'),
    (26, 'edmond@rostand.com');
    

CREATE TABLE movies (
	id serial PRIMARY KEY,
	title VARCHAR(255),
	score INTEGER,
	year DATE,
	genre VARCHAR(255),
	director_id INTEGER REFERENCES directors(id),
	writer_id INTEGER REFERENCES writers(id),
	star_id INTEGER REFERENCES stars(id)
);

INSERT INTO movies (title, director_id, star_id, writer_id, year, genre, score)
VALUES
    ('2001: A Space Odyssey', 1, 1, 1, '1968-01-01', 'Science Fiction', 10),
    ('Star Wars: A New Hope', 2, 2, 2, '1977-01-01', 'Science Fiction', 7),
    ('To Kill A Mockingbird', 3, 3, 3, '1962-01-01', 'Drama', 10),
    ('Titanic', 4, 4, 4, '1997-01-01', 'Romance', 5),
    ('Dr Zhivago', 5, 5, 5, '1965-01-01', 'Historical', 8),
    ('El Cid', 6, 6, 6, '1961-01-01', 'Historical', 6),
    ('Voyage to Cythera', 7, 7, 7, '1984-01-01', 'Drama', 8),
    ('Soldier of Orange', 8, 8, 8, '1977-01-01', 'Thriller', 8),
    ('Three Colours: Blue', 9, 9, 9, '1993-01-01', 'Drama', 8),
    ('Cyrano de Bergerac', 10, 10, 10, '1990-01-01', 'Historical', 9);


