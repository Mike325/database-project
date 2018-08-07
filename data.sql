-- Movies
--data from themoviedb.org
INSERT INTO MOVIE (NAME, DURATION, COST, INCOME, RELEASE_DATE)
    VALUES ('Jurassic Park', 127, 63000000.00, 920100000.00, 1993-06-09);

INSERT INTO MOVIE (NAME, DURATION, COST, INCOME, RELEASE_DATE)
    VALUES ('Dracula', 72, 355000.00, 355000, 1931-02-12);

INSERT INTO MOVIE (NAME, DURATION, COST, INCOME, RELEASE_DATE)
    VALUES ('Godzilla', 96, 1000000, 1500000, 1954-12-03);

INSERT INTO MOVIE (NAME, DURATION, COST, INCOME, RELEASE_DATE)
    VALUES ('Casablanca', 102, 878000.00, 10462500.00, 1942-11-26);

INSERT INTO MOVIE (NAME, DURATION, COST, INCOME, RELEASE_DATE)
    VALUES ('The Day the Earth Stood Still ', 92, 1200000.00, 1200000.00, 1951-09-17);

INSERT INTO MOVIE (NAME, DURATION, COST, INCOME, RELEASE_DATE)
    VALUES ('Alien', 117, 11000000.00, 104931801.00, 1979-05-25);

INSERT INTO MOVIE (NAME, DURATION, COST, INCOME, RELEASE_DATE)
    VALUES ('La Pianiste', 131, 3000000.00, 9801375.00, 2002-03-28);

INSERT INTO MOVIE (NAME, DURATION, COST, INCOME, RELEASE_DATE)
    VALUES ('Rashomon', 88, 250000.00, 96568.00, 0-0-0);

INSERT INTO MOVIE (NAME, DURATION, COST, INCOME, RELEASE_DATE)
    VALUES ('Night of the Living Dead', 96, 114000.00, 30000000.00, 1968-10-01);

INSERT INTO MOVIE (NAME, DURATION, COST, INCOME, RELEASE_DATE)
    VALUES ('Das Cabinet des Dr. Caligari', 78, 18000.00, 18000.00, 1921-03-19);

-- Director
--data from themoviedb.org
INSERT INTO DIRECTORS (NAME, LASTNAME, NATIONALITY)
    VALUES ('Steven', 'Spielberg', 'USA');

INSERT INTO DIRECTORS (NAME, LASTNAME, NATIONALITY)
    VALUES ('Tod', 'Browning', 'USA');

INSERT INTO DIRECTORS (NAME, LASTNAME, NATIONALITY)
    VALUES ('Ishirou', 'Honda', 'Japan');

INSERT INTO DIRECTORS (NAME, LASTNAME, NATIONALITY)
    VALUES ('Michael', 'Curtiz', 'Hungary');

INSERT INTO DIRECTORS (NAME, LASTNAME, NATIONALITY)
    VALUES ('Robert', 'Wise', 'USA');

INSERT INTO DIRECTORS (NAME, LASTNAME, NATIONALITY)
    VALUES ('Ridley', 'Scott', 'USA');

INSERT INTO DIRECTORS (NAME, LASTNAME, NATIONALITY)
    VALUES ('Michael', 'Haneke', 'Austria');

INSERT INTO DIRECTORS (NAME, LASTNAME, NATIONALITY)
    VALUES ('Akira', 'Kurosawa', 'Japan');

INSERT INTO DIRECTORS (NAME, LASTNAME, NATIONALITY)
    VALUES ('George', 'A. Romero', 'USA');

INSERT INTO DIRECTORS (NAME, LASTNAME, NATIONALITY)
    VALUES ('Robert', 'Wiene', 'Poland');


-- Actor

INSERT INTO ACTORS (NAME, LASTNAME, NATIONALITY)
    VALUES ('Sam', 'Neill', 'USA');

INSERT INTO ACTORS (NAME, LASTNAME, NATIONALITY)
    VALUES ('Laura', 'Dern', 'USA');

INSERT INTO ACTORS (NAME, LASTNAME, NATIONALITY)
    VALUES ('Jeff', 'Goldblum', 'USA');

INSERT INTO ACTORS (NAME, LASTNAME, NATIONALITY)
    VALUES ('Bela', 'Lugosi', 'Hungary');

INSERT INTO ACTORS (NAME, LASTNAME, NATIONALITY)
    VALUES ('Dwight', 'Frye', 'USA');

INSERT INTO ACTORS (NAME, LASTNAME, NATIONALITY)
    VALUES ('Haruo', 'Nakajima', 'Japan');

INSERT INTO ACTORS (NAME, LASTNAME, NATIONALITY)
    VALUES ('Akira', 'Takarada', 'Japan');

INSERT INTO ACTORS (NAME, LASTNAME, NATIONALITY)
    VALUES ('Humphrey', 'Bogart', 'USA');

INSERT INTO ACTORS (NAME, LASTNAME, NATIONALITY)
    VALUES ('Ingrid', 'Bergman', 'Sweden');

INSERT INTO ACTORS (NAME, LASTNAME, NATIONALITY)
    VALUES ('Michael', 'Rennie', 'England');
    
INSERT INTO ACTORS (NAME, LASTNAME, NATIONALITY)
    VALUES ('Sigourney', 'Weaver', 'USA');
    
INSERT INTO ACTORS (NAME, LASTNAME, NATIONALITY)
    VALUES ('Isabelle', 'Huppert', 'France');
    
INSERT INTO ACTORS (NAME, LASTNAME, NATIONALITY)
    VALUES ('Toshirou', 'Mifune', 'Japan');
    
INSERT INTO ACTORS (NAME, LASTNAME, NATIONALITY)
    VALUES ('Machiko', 'Kyou', 'Japan');
    
INSERT INTO ACTORS (NAME, LASTNAME, NATIONALITY)
    VALUES ('Masayuki', 'Mori', 'Japan');
    
INSERT INTO ACTORS (NAME, LASTNAME, NATIONALITY)
    VALUES ('Duane', 'Jones', 'USA');
        
INSERT INTO ACTORS (NAME, LASTNAME, NATIONALITY)
    VALUES ('Judith', 'ODea', 'USA');
        
INSERT INTO ACTORS (NAME, LASTNAME, NATIONALITY)
    VALUES ('Werner', 'Krauss', 'Germany');
        
INSERT INTO ACTORS (NAME, LASTNAME, NATIONALITY)
    VALUES ('Conrad', 'Veidt', 'Germany');

-- TODO:

-- Country

INSERT INTO COUNTRIES (NAME)
    VALUES ( 'Mexico');

INSERT INTO COUNTRIES (NAME)
    VALUES ( 'Germany');

INSERT INTO COUNTRIES (NAME)
    VALUES ( 'China');

INSERT INTO COUNTRIES (NAME)
    VALUES ( 'Cuba');

INSERT INTO COUNTRIES (NAME)
    VALUES ( 'Rusia');

INSERT INTO COUNTRIES (NAME)
    VALUES ( 'England');

INSERT INTO COUNTRIES (NAME)
    VALUES ( 'France');

INSERT INTO COUNTRIES (NAME)
    VALUES ( 'Spain');

INSERT INTO COUNTRIES (NAME)
    VALUES ( 'Australia');

INSERT INTO COUNTRIES (NAME)
    VALUES ( 'New Zeland');

-- Studio

INSERT INTO STUDIO (NAME, LOCATION)
    VALUES ('Universal', 'USA');

INSERT INTO STUDIO (NAME, LOCATION)
    VALUES ('FOX', 'USA');

INSERT INTO STUDIO (NAME, LOCATION)
    VALUES ('Tequila', 'Mexico');

INSERT INTO STUDIO (NAME, LOCATION)
    VALUES ('Vodka Studio', 'Rusia');

INSERT INTO STUDIO (NAME, LOCATION)
    VALUES ('Sorry Studio', 'Canada');

INSERT INTO STUDIO (NAME, LOCATION)
    VALUES ('Kiwis Studio', 'New Zeland');

INSERT INTO STUDIO (NAME, LOCATION)
    VALUES ('Copys', 'China');

INSERT INTO STUDIO (NAME, LOCATION)
    VALUES ('Disney', 'USA');

INSERT INTO STUDIO (NAME, LOCATION)
    VALUES ('Pixar', 'USA');

INSERT INTO STUDIO (NAME, LOCATION)
    VALUES ('Dream Works', 'USA');

-- Gender

INSERT INTO GENDERS (NAME)
    VALUES ('Terror');

INSERT INTO GENDERS (NAME)
    VALUES ('Drama');

INSERT INTO GENDERS (NAME)
    VALUES ('Action');

INSERT INTO GENDERS (NAME)
    VALUES ('Comedy');

INSERT INTO GENDERS (NAME)
    VALUES ('Science fiction');

INSERT INTO GENDERS (NAME)
    VALUES ('Romance');

INSERT INTO GENDERS (NAME)
    VALUES ('Animation');

INSERT INTO GENDERS (NAME)
    VALUES ('Suspense');

INSERT INTO GENDERS (NAME)
    VALUES ('Art');

INSERT INTO GENDERS (NAME)
    VALUES ('Documentary');
