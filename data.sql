-- Clasifications
INSERT INTO CLASIFICATIONS (NAME, SHORT_NAME)
    VALUES ('General Audiences', 'G');

INSERT INTO CLASIFICATIONS (NAME, SHORT_NAME)
    VALUES ('Parental Guidance Suggested', 'PG');

INSERT INTO CLASIFICATIONS (NAME, SHORT_NAME)
    VALUES ('Parents Strongly Cautioned', 'PG-13');

INSERT INTO CLASIFICATIONS (NAME, SHORT_NAME)
    VALUES ('Restricted', 'R');

INSERT INTO CLASIFICATIONS (NAME, SHORT_NAME)
    VALUES ('Adults Only', 'NC-17');

-- Country

INSERT INTO COUNTRY (NAME)
    VALUES ('France');

INSERT INTO COUNTRY (NAME)
    VALUES ('Mexico');

INSERT INTO COUNTRY (NAME)
    VALUES ('Germany');

INSERT INTO COUNTRY (NAME)
    VALUES ('China');

INSERT INTO COUNTRY (NAME)
    VALUES ('Cuba');

INSERT INTO COUNTRY (NAME)
    VALUES ('Rusia');

INSERT INTO COUNTRY (NAME)
    VALUES ('Sweden');

INSERT INTO COUNTRY (NAME)
    VALUES ('Canada');

INSERT INTO COUNTRY (NAME)
    VALUES ('England');

INSERT INTO COUNTRY (NAME)
    VALUES ('France');

INSERT INTO COUNTRY (NAME)
    VALUES ('Spain');

INSERT INTO COUNTRY (NAME)
    VALUES ('Australia');

INSERT INTO COUNTRY (NAME)
    VALUES ('New Zeland');

INSERT INTO COUNTRY (NAME)
    VALUES ('Japan');

-- Gender

INSERT INTO GENDERS (NAME)
    VALUES ('Aventure');

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

-- Director
--data from themoviedb.org
INSERT INTO DIRECTORS (NAME, LASTNAME, NATIONALITY)
    VALUES ('Steven', 'Spielberg', (SELECT ID FROM COUNTRY WHERE NAME = 'USA'));

INSERT INTO DIRECTORS (NAME, LASTNAME, NATIONALITY)
    VALUES ('Tod', 'Browning', (SELECT ID FROM COUNTRY WHERE NAME = 'USA'));

INSERT INTO DIRECTORS (NAME, LASTNAME, NATIONALITY)
    VALUES ('Ishirou', 'Honda', (SELECT ID FROM COUNTRY WHERE NAME = 'Japan'));

INSERT INTO DIRECTORS (NAME, LASTNAME, NATIONALITY)
    VALUES ('Michael', 'Curtiz', (SELECT ID FROM COUNTRY WHERE NAME = 'Hungary'));

INSERT INTO DIRECTORS (NAME, LASTNAME, NATIONALITY)
    VALUES ('Robert', 'Wise', (SELECT ID FROM COUNTRY WHERE NAME = 'USA'));

INSERT INTO DIRECTORS (NAME, LASTNAME, NATIONALITY)
    VALUES ('Ridley', 'Scott', (SELECT ID FROM COUNTRY WHERE NAME = 'USA'));

INSERT INTO DIRECTORS (NAME, LASTNAME, NATIONALITY)
    VALUES ('Michael', 'Haneke', (SELECT ID FROM COUNTRY WHERE NAME = 'Austria'));

INSERT INTO DIRECTORS (NAME, LASTNAME, NATIONALITY)
    VALUES ('Akira', 'Kurosawa', (SELECT ID FROM COUNTRY WHERE NAME = 'Japan'));

INSERT INTO DIRECTORS (NAME, LASTNAME, NATIONALITY)
    VALUES ('George', 'A. Romero', (SELECT ID FROM COUNTRY WHERE NAME = 'USA'));

INSERT INTO DIRECTORS (NAME, LASTNAME, NATIONALITY)
    VALUES ('Robert', 'Wiene', (SELECT ID FROM COUNTRY WHERE NAME = 'Poland'));


-- Actor

INSERT INTO ACTORS (NAME, LASTNAME, NATIONALITY)
    VALUES ('Sam', 'Neill', (SELECT ID FROM COUNTRY WHERE NAME = 'USA'));

INSERT INTO ACTORS (NAME, LASTNAME, NATIONALITY)
    VALUES ('Laura', 'Dern', (SELECT ID FROM COUNTRY WHERE NAME = 'USA'));

INSERT INTO ACTORS (NAME, LASTNAME, NATIONALITY)
    VALUES ('Jeff', 'Goldblum', (SELECT ID FROM COUNTRY WHERE NAME = 'USA'));

INSERT INTO ACTORS (NAME, LASTNAME, NATIONALITY)
    VALUES ('Bela', 'Lugosi', (SELECT ID FROM COUNTRY WHERE NAME = 'Hungary'));

INSERT INTO ACTORS (NAME, LASTNAME, NATIONALITY)
    VALUES ('Dwight', 'Frye', (SELECT ID FROM COUNTRY WHERE NAME = 'USA'));

INSERT INTO ACTORS (NAME, LASTNAME, NATIONALITY)
    VALUES ('Haruo', 'Nakajima', (SELECT ID FROM COUNTRY WHERE NAME = 'Japan'));

INSERT INTO ACTORS (NAME, LASTNAME, NATIONALITY)
    VALUES ('Akira', 'Takarada', (SELECT ID FROM COUNTRY WHERE NAME = 'Japan'));

INSERT INTO ACTORS (NAME, LASTNAME, NATIONALITY)
    VALUES ('Humphrey', 'Bogart', (SELECT ID FROM COUNTRY WHERE NAME = 'USA'));

INSERT INTO ACTORS (NAME, LASTNAME, NATIONALITY)
    VALUES ('Ingrid', 'Bergman', (SELECT ID FROM COUNTRY WHERE NAME = 'Sweden'));

INSERT INTO ACTORS (NAME, LASTNAME, NATIONALITY)
    VALUES ('Michael', 'Rennie', (SELECT ID FROM COUNTRY WHERE NAME = 'England'));

INSERT INTO ACTORS (NAME, LASTNAME, NATIONALITY)
    VALUES ('Sigourney', 'Weaver', (SELECT ID FROM COUNTRY WHERE NAME = 'USA'));

INSERT INTO ACTORS (NAME, LASTNAME, NATIONALITY)
    VALUES ('Isabelle', 'Huppert', (SELECT ID FROM COUNTRY WHERE NAME = 'France'));

INSERT INTO ACTORS (NAME, LASTNAME, NATIONALITY)
    VALUES ('Toshirou', 'Mifune', (SELECT ID FROM COUNTRY WHERE NAME = 'Japan'));

INSERT INTO ACTORS (NAME, LASTNAME, NATIONALITY)
    VALUES ('Machiko', 'Kyou', (SELECT ID FROM COUNTRY WHERE NAME = 'Japan'));

INSERT INTO ACTORS (NAME, LASTNAME, NATIONALITY)
    VALUES ('Masayuki', 'Mori', (SELECT ID FROM COUNTRY WHERE NAME = 'Japan'));

INSERT INTO ACTORS (NAME, LASTNAME, NATIONALITY)
    VALUES ('Duane', 'Jones', (SELECT ID FROM COUNTRY WHERE NAME = 'USA'));

INSERT INTO ACTORS (NAME, LASTNAME, NATIONALITY)
    VALUES ('Judith', 'ODea', (SELECT ID FROM COUNTRY WHERE NAME = 'USA'));

INSERT INTO ACTORS (NAME, LASTNAME, NATIONALITY)
    VALUES ('Werner', 'Krauss', (SELECT ID FROM COUNTRY WHERE NAME = 'Germany'));

INSERT INTO ACTORS (NAME, LASTNAME, NATIONALITY)
    VALUES ('Conrad', 'Veidt', (SELECT ID FROM COUNTRY WHERE NAME = 'Germany'));

-- Studio

INSERT INTO STUDIO (NAME, LOCATION)
    VALUES ('Universal', ( SELECT ID FROM COUNTRY WHERE NAME = 'USA'));

INSERT INTO STUDIO (NAME, LOCATION)
    VALUES ('FOX', ( SELECT ID FROM COUNTRY WHERE NAME = 'USA'));

INSERT INTO STUDIO (NAME, LOCATION)
    VALUES ('Tequila', ( SELECT ID FROM COUNTRY WHERE NAME = 'Mexico'));

INSERT INTO STUDIO (NAME, LOCATION)
    VALUES ('Vodka Studio', ( SELECT ID FROM COUNTRY WHERE NAME = 'Rusia'));

INSERT INTO STUDIO (NAME, LOCATION)
    VALUES ('Sorry Studio', ( SELECT ID FROM COUNTRY WHERE NAME = 'Canada'));

INSERT INTO STUDIO (NAME, LOCATION)
    VALUES ('Kiwis Studio', ( SELECT ID FROM COUNTRY WHERE NAME = 'New Zeland'));

INSERT INTO STUDIO (NAME, LOCATION)
    VALUES ('Copys', ( SELECT ID FROM COUNTRY WHERE NAME = 'China'));

INSERT INTO STUDIO (NAME, LOCATION)
    VALUES ('Disney', ( SELECT ID FROM COUNTRY WHERE NAME = 'USA'));

INSERT INTO STUDIO (NAME, LOCATION)
    VALUES ('Pixar', ( SELECT ID FROM COUNTRY WHERE NAME = 'USA'));

INSERT INTO STUDIO (NAME, LOCATION)
    VALUES ('Dream Works', ( SELECT ID FROM COUNTRY WHERE NAME = 'USA'));

-- Movies
--data from themoviedb.org
INSERT INTO MOVIE (
    NAME,
    DURATION,
    COST,
    INCOME,
    RELEASE_DATE,
    GENDER,
    DIRECTOR,
    CLASIFICATION,
    COUNTRY,
    STUDIO
)
    VALUES (
        'Jurassic Park',
        127,
        63000000.00,
        920100000.00,
        1993-06-09,
        (SELECT ID FROM GENDERS WHERE NAME='AVENTURE' OR NAME='SCIENCE FICTION'),
        (SELECT ID FROM DIRECTORS WHERE NAME='Steven Spielberg'),
        (SELECT ID FROM CLASIFICATIONS WHERE NAME='Sam Neill' OR NAME='SCIENCE FICTION'),
        (SELECT ID FROM COUNTRY WHERE NAME='AVENTURE' OR NAME='SCIENCE FICTION'),
        (SELECT ID FROM STUDIOS WHERE NAME='AVENTURE' OR NAME='SCIENCE FICTION'),
);

INSERT INTO MOVIE (
    NAME,
    DURATION,
    COST,
    INCOME,
    RELEASE_DATE,
    GENDER,
    DIRECTOR,
    CLASIFICATION,
    COUNTRY,
    STUDIO
)
    VALUES (
        'Dracula',
        72,
        355000.00,
        355000,
        1931-02-12,
        (SELECT ID FROM GENDERS WHERE NAME='AVENTURE' OR NAME='SCIENCE FICTION'),
        (SELECT ID FROM DIRECTORS WHERE GENDER='AVENTURE' OR GENDER='SCIENCE FICTION'),
        (SELECT ID FROM CLASIFICATIONS WHERE GENDER='AVENTURE' OR GENDER='SCIENCE FICTION'),
        (SELECT ID FROM COUNTRY WHERE GENDER='AVENTURE' OR GENDER='SCIENCE FICTION'),
        (SELECT ID FROM STUDIOS WHERE GENDER='AVENTURE' OR GENDER='SCIENCE FICTION'),
);

INSERT INTO MOVIE (
    NAME,
    DURATION,
    COST,
    INCOME,
    RELEASE_DATE,
    GENDER,
    DIRECTOR,
    CLASIFICATION,
    COUNTRY,
    STUDIO
)
    VALUES (
        'Godzilla',
        96,
        1000000,
        1500000,
        1954-12-03
        (SELECT ID FROM GENDERS WHERE NAME='AVENTURE' OR NAME='SCIENCE FICTION'),
        (SELECT ID FROM DIRECTORS WHERE GENDER='AVENTURE' OR GENDER='SCIENCE FICTION'),
        (SELECT ID FROM CLASIFICATIONS WHERE GENDER='AVENTURE' OR GENDER='SCIENCE FICTION'),
        (SELECT ID FROM COUNTRY WHERE GENDER='AVENTURE' OR GENDER='SCIENCE FICTION'),
        (SELECT ID FROM STUDIOS WHERE GENDER='AVENTURE' OR GENDER='SCIENCE FICTION'),
);

INSERT INTO MOVIE (
    NAME,
    DURATION,
    COST,
    INCOME,
    RELEASE_DATE,
    GENDER,
    DIRECTOR,
    CLASIFICATION,
    COUNTRY,
    STUDIO
)
    VALUES (
        'Casablanca',
        102,
        878000.00,
        10462500.00,
        1942-11-26
        (SELECT ID FROM GENDERS WHERE NAME='AVENTURE' OR NAME='SCIENCE FICTION'),
        (SELECT ID FROM DIRECTORS WHERE GENDER='AVENTURE' OR GENDER='SCIENCE FICTION'),
        (SELECT ID FROM CLASIFICATIONS WHERE GENDER='AVENTURE' OR GENDER='SCIENCE FICTION'),
        (SELECT ID FROM COUNTRY WHERE GENDER='AVENTURE' OR GENDER='SCIENCE FICTION'),
        (SELECT ID FROM STUDIOS WHERE GENDER='AVENTURE' OR GENDER='SCIENCE FICTION'),
);

INSERT INTO MOVIE (
    NAME,
    DURATION,
    COST,
    INCOME,
    RELEASE_DATE,
    GENDER,
    DIRECTOR,
    CLASIFICATION,
    COUNTRY,
    STUDIO
)
    VALUES (
        'The Day the Earth Stood Still ',
        92,
        1200000.00,
        1200000.00,
        1951-09-17)
        (SELECT ID FROM GENDERS WHERE NAME='AVENTURE' OR NAME='SCIENCE FICTION'),
        (SELECT ID FROM DIRECTORS WHERE GENDER='AVENTURE' OR GENDER='SCIENCE FICTION'),
        (SELECT ID FROM CLASIFICATIONS WHERE GENDER='AVENTURE' OR GENDER='SCIENCE FICTION'),
        (SELECT ID FROM COUNTRY WHERE GENDER='AVENTURE' OR GENDER='SCIENCE FICTION'),
        (SELECT ID FROM STUDIOS WHERE GENDER='AVENTURE' OR GENDER='SCIENCE FICTION'),
);

INSERT INTO MOVIE (
    NAME,
    DURATION,
    COST,
    INCOME,
    RELEASE_DATE,
    GENDER,
    DIRECTOR,
    CLASIFICATION,
    COUNTRY,
    STUDIO
)
    VALUES (
        'Alien',
        117,
        11000000.00,
        104931801.00,
        1979-05-25
        (SELECT ID FROM GENDERS WHERE NAME='AVENTURE' OR NAME='SCIENCE FICTION'),
        (SELECT ID FROM DIRECTORS WHERE GENDER='AVENTURE' OR GENDER='SCIENCE FICTION'),
        (SELECT ID FROM CLASIFICATIONS WHERE GENDER='AVENTURE' OR GENDER='SCIENCE FICTION'),
        (SELECT ID FROM COUNTRY WHERE GENDER='AVENTURE' OR GENDER='SCIENCE FICTION'),
        (SELECT ID FROM STUDIOS WHERE GENDER='AVENTURE' OR GENDER='SCIENCE FICTION'),
);


INSERT INTO MOVIE (
    NAME,
    DURATION,
    COST,
    INCOME,
    RELEASE_DATE,
    GENDER,
    DIRECTOR,
    CLASIFICATION,
    COUNTRY,
    STUDIO
)
    VALUES (
        'La Pianiste',
        131,
        3000000.00,
        9801375.00,
        2002-03-28
        (SELECT ID FROM GENDERS WHERE NAME='AVENTURE' OR NAME='SCIENCE FICTION'),
        (SELECT ID FROM DIRECTORS WHERE GENDER='AVENTURE' OR GENDER='SCIENCE FICTION'),
        (SELECT ID FROM CLASIFICATIONS WHERE GENDER='AVENTURE' OR GENDER='SCIENCE FICTION'),
        (SELECT ID FROM COUNTRY WHERE GENDER='AVENTURE' OR GENDER='SCIENCE FICTION'),
        (SELECT ID FROM STUDIOS WHERE GENDER='AVENTURE' OR GENDER='SCIENCE FICTION'),
);

INSERT INTO MOVIE (
    NAME,
    DURATION,
    COST,
    INCOME,
    RELEASE_DATE,
    GENDER,
    DIRECTOR,
    CLASIFICATION,
    COUNTRY,
    STUDIO
)
    VALUES (
        'Rashomon',
        88,
        250000.00,
        96568.00,
        1950-08-25
        (SELECT ID FROM GENDERS WHERE NAME='AVENTURE' OR NAME='SCIENCE FICTION'),
        (SELECT ID FROM DIRECTORS WHERE GENDER='AVENTURE' OR GENDER='SCIENCE FICTION'),
        (SELECT ID FROM CLASIFICATIONS WHERE GENDER='AVENTURE' OR GENDER='SCIENCE FICTION'),
        (SELECT ID FROM COUNTRY WHERE GENDER='AVENTURE' OR GENDER='SCIENCE FICTION'),
        (SELECT ID FROM STUDIOS WHERE GENDER='AVENTURE' OR GENDER='SCIENCE FICTION'),
);

INSERT INTO MOVIE (
    NAME,
    DURATION,
    COST,
    INCOME,
    RELEASE_DATE,
    GENDER,
    DIRECTOR,
    CLASIFICATION,
    COUNTRY,
    STUDIO
)
    VALUES (
        'Night of the Living Dead',
        96,
        114000.00,
        30000000.00,
        1968-10-01
        (SELECT ID FROM GENDERS WHERE NAME='AVENTURE' OR NAME='SCIENCE FICTION'),
        (SELECT ID FROM DIRECTORS WHERE GENDER='AVENTURE' OR GENDER='SCIENCE FICTION'),
        (SELECT ID FROM CLASIFICATIONS WHERE GENDER='AVENTURE' OR GENDER='SCIENCE FICTION'),
        (SELECT ID FROM COUNTRY WHERE GENDER='AVENTURE' OR GENDER='SCIENCE FICTION'),
        (SELECT ID FROM STUDIOS WHERE GENDER='AVENTURE' OR GENDER='SCIENCE FICTION'),
);

INSERT INTO MOVIE (
    NAME,
    DURATION,
    COST,
    INCOME,
    RELEASE_DATE,
    GENDER,
    DIRECTOR,
    CLASIFICATION,
    COUNTRY,
    STUDIO
)
    VALUES (
        'Das Cabinet des Dr. Caligari',
        78,
        18000.00,
        18000.00,
        1921-03-19
        (SELECT ID FROM GENDERS WHERE NAME='AVENTURE' OR NAME='SCIENCE FICTION'),
        (SELECT ID FROM DIRECTORS WHERE GENDER='AVENTURE' OR GENDER='SCIENCE FICTION'),
        (SELECT ID FROM CLASIFICATIONS WHERE GENDER='AVENTURE' OR GENDER='SCIENCE FICTION'),
        (SELECT ID FROM COUNTRY WHERE GENDER='AVENTURE' OR GENDER='SCIENCE FICTION'),
        (SELECT ID FROM STUDIOS WHERE GENDER='AVENTURE' OR GENDER='SCIENCE FICTION'),
);
