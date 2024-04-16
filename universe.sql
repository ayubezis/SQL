CREATE DATABASE universe 

\c universe

CREATE TABLE galaxy (
    galaxy_id SERIAL PRIMARY KEY,
    name VARCHAR UNIQUE NOT NULL,
    size INT NOT NULL,
    shape text,
    has_black_hole BOOLEAN NOT NULL,
    age NUMERIC
);

CREATE TABLE star (
    star_id SERIAL PRIMARY KEY,
    name VARCHAR UNIQUE NOT NULL,
	galaxy_id INT REFERENCES galaxy(galaxy_id),
    mass INT NOT NULL,
    temperature INT,
    has_planets BOOLEAN NOT NULL
);

CREATE TABLE planet (
    planet_id SERIAL PRIMARY KEY,
    name VARCHAR UNIQUE NOT NULL,
	star_id INT REFERENCES star(star_id),
    diameter INT NOT NULL,
    distance_from_star NUMERIC,
    has_atmosphere BOOLEAN NOT NULL
);

CREATE TABLE moon (
    moon_id SERIAL PRIMARY KEY,
    name VARCHAR UNIQUE NOT NULL,
    planet_id INT REFERENCES planet(planet_id),
    radius INT NOT NULL,
    orbital_period NUMERIC,
    is_inhabited BOOLEAN NOT NULL
);

CREATE TABLE constellation (
    constellation_id SERIAL PRIMARY KEY,
    name VARCHAR UNIQUE NOT NULL,
    abbreviation VARCHAR(5) NOT NULL,
    number_of_stars INT,
    brightest_star VARCHAR,
    is_zodiac BOOLEAN NOT NULL
);


INSERT INTO galaxy VALUES ('Via Lactea', 100000, 'Spiral', true, 13000),
('Andromeda', 120000, 'Spiral', true, 14000),
('Triangulo', 70000, 'Spiral', false, 15000),
('Messier 87', 80000, 'Elliptical', true, 12000),
('Catavento', 90000, 'Spiral', false, 16000),
('Rodamoinho', 95000, 'Spiral', false, 17000);


INSERT INTO star VALUES ('Sol', 1, 100000, 5778, true),
('Sirius', 1, 30000, 9940, false),
('Alpha Centauri', 1, 20000, 5790, true),
('Betelgeuse', 2, 120000, 3500, true),
('Vega', 1, 40000, 9602, false),
('Polar', 1, 60000, 4286, true);


INSERT INTO planet VALUES ('Terra', 1, 12742, 149600000, true),
('Marte', 1, 6779, 227900000, true),
('Jupiter', 1, 139820, 778500000, false),
('Saturno', 1, 116460, 1433000000, false),
('Netuno', 1, 49528, 4497100000, true),
('Mercurio', 1, 4879, 57910000, false),
('Urano', 1, 50724, 2871000000, true),
('Kepler-186f', 5, 11436, 53200000, true),
('Ceres', 1, 940, 414000000, false),
('Plutão', 1, 2377, 5922000000, true),
('Eris', 2, 2326, 13500000000, true),
('Haumea', 1, 1960, 6452000000, false);


INSERT INTO moon VALUES ('Lua', 1, 1737, 27.3, false),
('Fobos', 2, 11, 0.3, false),
('Ganímedes', 3, 2631, 7.2, false),
('Tritão', 5, 1353, 5.9, false),
('Europa', 3, 1561, 3.5, false),
('Encélado', 4, 252, 1.4, false),
('Miranda', 6, 236, 1.4, false),
('Endor', 7, 4900, 24, false),
('Alderaan', 8, 2670, 0.3, false),
('Titânia', 7, 789, 8.7, false),
('Ariel', 7, 579, 2.5, false),
('Caronte', 10, 606, 6.4, false),
('Febe', 4, 107, 550.5, false),
('Calisto', 3, 2410, 16.7, false),
('Hiperíon', 4, 135, 21.3, false),
('Mimante', 4, 198, 22.6, false),
('Nereida', 5, 170, -360.1, false),
('Reia', 4, 765, 4.5, false),
('Oberon', 7, 761, 13.5, false);


INSERT INTO constellation VALUES ('Orion', 'Ori', 7, 'Rigel', true),
('Ursa Major', 'UMa', 7, 'Dubhe', false),
('Cassiopeia', 'Cas', 5, 'Shedir', true),
('Southern Cross', 'Crux', 5, 'Acrux', false),
('Centaurus', 'Cen', 11, 'Alpha Centauri', false);