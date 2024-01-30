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

CREATE TABLE directors (
	id serial PRIMARY KEY,
	name VARCHAR(255),
	country VARCHAR(255)
);

CREATE TABLE writers (
	id serial PRIMARY KEY,
	name VARCHAR(255),
	email VARCHAR(255)
);

CREATE TABLE stars (
	id serial PRIMARY KEY,
	name VARCHAR(255),
	dob DATE
);

INSERT INTO directors (id, name, country)
VALUES
    (1, 'Stanley Kubrick', 'USA'),
    (2, 'George Lucas', 'USA'),
    (3, 'Robert Mulligan', 'USA'),
    (4, 'James Cameron', 'Canada'),
    (5, 'David Lean', 'UK'),
    (6, 'Anthony Mann', 'USA'),
    (7, 'Theodoros Angelopoulos', 'Greece'),
    (8, 'Paul Verhoeven', 'Netherlands'),
    (9, 'Krzysztof Kieslowski', 'Poland'),
    (10, 'Jean-Paul Rappeneau', 'France');
    
INSERT INTO stars (id, name, dob)
VALUES
    (1, 'Keir Dullea', '1936-05-30'),
    (2, 'Mark Hamill', '1951-09-25'),
    (3, 'Gregory Peck', '1916-04-05'),
    (4, 'Leonardo DiCaprio', '1974-11-11'),
    (5, 'Julie Christie', '1940-04-14'),
    (6, 'Charlton Heston', '1923-10-04'),
    (7, 'Manos Katrakis', '1908-08-14'),
    (8, 'Rutger Hauer', '1944-01-23'),
    (9, 'Juliette Binoche', '1964-03-09'),
    (10, 'Gerard Depardieu', '1948-12-27');
    
INSERT INTO writers (name, email)
VALUES
    ('Arthur C Clarke', 'arthur@clarke.com'),
    ('George Lucas', 'george@email.com'),
    ('Harper Lee', 'harper@lee.com'),
    ('James Cameron', 'james@cameron.com'),
    ('Boris Pasternak', 'boris@boris.com'),
    ('Frederick Frank', 'fred@frank.com'),
    ('Theodoros Angelopoulos', 'theo@angelopoulos.com'),
    ('Erik Hazelhoff Roelfzema', 'erik@roelfzema.com'),
    ('Krzysztof Kieslowski', 'email@email.com'),
    ('Edmond Rostand', 'edmond@rostand.com');

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

