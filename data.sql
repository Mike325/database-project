--By setting the SCHEMA as FILM there's no need to refer to the SCHEME on each INSERT
SET SCHEMA = MOVIEINDEX;

-- CLASIFICATION
INSERT INTO CLASIFICATION (NAME, SHORT_NAME) VALUES ('General Audiences', 'G');
INSERT INTO CLASIFICATION (NAME, SHORT_NAME) VALUES ('Parental Guidance Suggested', 'PG');
INSERT INTO CLASIFICATION (NAME, SHORT_NAME) VALUES ('Parents Strongly Cautioned', 'PG-13');
INSERT INTO CLASIFICATION (NAME, SHORT_NAME) VALUES ('Restricted', 'R');
INSERT INTO CLASIFICATION (NAME, SHORT_NAME) VALUES ('Adults Only', 'NC-17');

-- Country

INSERT INTO COUNTRY (NAME) VALUES ('France');
INSERT INTO COUNTRY (NAME) VALUES ('Mexico');
INSERT INTO COUNTRY (NAME) VALUES ('Germany');
INSERT INTO COUNTRY (NAME) VALUES ('China');
INSERT INTO COUNTRY (NAME) VALUES ('Cuba');
INSERT INTO COUNTRY (NAME) VALUES ('Rusia');
INSERT INTO COUNTRY (NAME) VALUES ('Sweden');
INSERT INTO COUNTRY (NAME) VALUES ('Canada');
INSERT INTO COUNTRY (NAME) VALUES ('England');
INSERT INTO COUNTRY (NAME) VALUES ('Poland');
INSERT INTO COUNTRY (NAME) VALUES ('Spain');
INSERT INTO COUNTRY (NAME) VALUES ('Australia');
INSERT INTO COUNTRY (NAME) VALUES ('New Zeland');
INSERT INTO COUNTRY (NAME) VALUES ('Japan');
INSERT INTO COUNTRY (NAME) VALUES ('USA');
INSERT INTO COUNTRY (NAME) VALUES ('Hungary');
INSERT INTO COUNTRY (NAME) VALUES ('Austria');


-- GENDERS

INSERT INTO GENDER (NAME) VALUES ('Aventure');
INSERT INTO GENDER (NAME) VALUES ('Terror');
INSERT INTO GENDER (NAME) VALUES ('Drama');
INSERT INTO GENDER (NAME) VALUES ('Action');
INSERT INTO GENDER (NAME) VALUES ('Comedy');
INSERT INTO GENDER (NAME) VALUES ('Science fiction');
INSERT INTO GENDER (NAME) VALUES ('Romance');
INSERT INTO GENDER (NAME) VALUES ('Animation');
INSERT INTO GENDER (NAME) VALUES ('Suspense');
INSERT INTO GENDER (NAME) VALUES ('Art');
INSERT INTO GENDER (NAME) VALUES ('Documentary');

-- Director
--data from themoviedb.org
INSERT INTO DIRECTOR (NAME, LASTNAME, NATIONALITYID) VALUES ('Steven' , 'Spielberg', (SELECT ID FROM COUNTRY WHERE NAME = 'USA'));
INSERT INTO DIRECTOR (NAME, LASTNAME, NATIONALITYID) VALUES ('Tod'    , 'Browning' , (SELECT ID FROM COUNTRY WHERE NAME = 'USA'));
INSERT INTO DIRECTOR (NAME, LASTNAME, NATIONALITYID) VALUES ('Ishirou', 'Honda'    , (SELECT ID FROM COUNTRY WHERE NAME = 'Japan'));
INSERT INTO DIRECTOR (NAME, LASTNAME, NATIONALITYID) VALUES ('Michael', 'Curtiz'   , (SELECT ID FROM COUNTRY WHERE NAME = 'Hungary'));
INSERT INTO DIRECTOR (NAME, LASTNAME, NATIONALITYID) VALUES ('Robert' , 'Wise'     , (SELECT ID FROM COUNTRY WHERE NAME = 'USA'));
INSERT INTO DIRECTOR (NAME, LASTNAME, NATIONALITYID) VALUES ('Ridley' , 'Scott'    , (SELECT ID FROM COUNTRY WHERE NAME = 'USA'));
INSERT INTO DIRECTOR (NAME, LASTNAME, NATIONALITYID) VALUES ('Michael', 'Haneke'   , (SELECT ID FROM COUNTRY WHERE NAME = 'Austria'));
INSERT INTO DIRECTOR (NAME, LASTNAME, NATIONALITYID) VALUES ('Akira'  , 'Kurosawa' , (SELECT ID FROM COUNTRY WHERE NAME = 'Japan'));
INSERT INTO DIRECTOR (NAME, LASTNAME, NATIONALITYID) VALUES ('George' , 'A. Romero', (SELECT ID FROM COUNTRY WHERE NAME = 'USA'));
INSERT INTO DIRECTOR (NAME, LASTNAME, NATIONALITYID) VALUES ('Robert' , 'Wiene'    , (SELECT ID FROM COUNTRY WHERE NAME = 'Poland'));

-- Actor

INSERT INTO ACTOR (NAME, LASTNAME, NATIONALITYID) VALUES ('Sam'      , 'Neill'   , (SELECT ID FROM COUNTRY WHERE NAME = 'USA'));
INSERT INTO ACTOR (NAME, LASTNAME, NATIONALITYID) VALUES ('Laura'    , 'Dern'    , (SELECT ID FROM COUNTRY WHERE NAME = 'USA'));
INSERT INTO ACTOR (NAME, LASTNAME, NATIONALITYID) VALUES ('Jeff'     , 'Goldblum', (SELECT ID FROM COUNTRY WHERE NAME = 'USA'));
INSERT INTO ACTOR (NAME, LASTNAME, NATIONALITYID) VALUES ('Bela'     , 'Lugosi'  , (SELECT ID FROM COUNTRY WHERE NAME = 'Hungary'));
INSERT INTO ACTOR (NAME, LASTNAME, NATIONALITYID) VALUES ('Dwight'   , 'Frye'    , (SELECT ID FROM COUNTRY WHERE NAME = 'USA'));
INSERT INTO ACTOR (NAME, LASTNAME, NATIONALITYID) VALUES ('Haruo'    , 'Nakajima', (SELECT ID FROM COUNTRY WHERE NAME = 'Japan'));
INSERT INTO ACTOR (NAME, LASTNAME, NATIONALITYID) VALUES ('Akira'    , 'Takarada', (SELECT ID FROM COUNTRY WHERE NAME = 'Japan'));
INSERT INTO ACTOR (NAME, LASTNAME, NATIONALITYID) VALUES ('Humphrey' , 'Bogart'  , (SELECT ID FROM COUNTRY WHERE NAME = 'USA'));
INSERT INTO ACTOR (NAME, LASTNAME, NATIONALITYID) VALUES ('Ingrid'   , 'Bergman' , (SELECT ID FROM COUNTRY WHERE NAME = 'Sweden'));
INSERT INTO ACTOR (NAME, LASTNAME, NATIONALITYID) VALUES ('Michael'  , 'Rennie'  , (SELECT ID FROM COUNTRY WHERE NAME = 'England'));
INSERT INTO ACTOR (NAME, LASTNAME, NATIONALITYID) VALUES ('Sigourney', 'Weaver'  , (SELECT ID FROM COUNTRY WHERE NAME = 'USA'));
INSERT INTO ACTOR (NAME, LASTNAME, NATIONALITYID) VALUES ('Isabelle' , 'Huppert' , (SELECT ID FROM COUNTRY WHERE NAME = 'France'));
INSERT INTO ACTOR (NAME, LASTNAME, NATIONALITYID) VALUES ('Toshirou' , 'Mifune'  , (SELECT ID FROM COUNTRY WHERE NAME = 'Japan'));
INSERT INTO ACTOR (NAME, LASTNAME, NATIONALITYID) VALUES ('Machiko'  , 'Kyou'    , (SELECT ID FROM COUNTRY WHERE NAME = 'Japan'));
INSERT INTO ACTOR (NAME, LASTNAME, NATIONALITYID) VALUES ('Masayuki' , 'Mori'    , (SELECT ID FROM COUNTRY WHERE NAME = 'Japan'));
INSERT INTO ACTOR (NAME, LASTNAME, NATIONALITYID) VALUES ('Duane'    , 'Jones'   , (SELECT ID FROM COUNTRY WHERE NAME = 'USA'));
INSERT INTO ACTOR (NAME, LASTNAME, NATIONALITYID) VALUES ('Judith'   , 'ODea'    , (SELECT ID FROM COUNTRY WHERE NAME = 'USA'));
INSERT INTO ACTOR (NAME, LASTNAME, NATIONALITYID) VALUES ('Werner'   , 'Krauss'  , (SELECT ID FROM COUNTRY WHERE NAME = 'Germany'));
INSERT INTO ACTOR (NAME, LASTNAME, NATIONALITYID) VALUES ('Conrad'   , 'Veidt'   , (SELECT ID FROM COUNTRY WHERE NAME = 'Germany'));

-- Studio
INSERT INTO STUDIO (NAME, NATIONALITYID) VALUES ('Universal'          , ( SELECT ID FROM COUNTRY WHERE NAME = 'USA'));
INSERT INTO STUDIO (NAME, NATIONALITYID) VALUES ('FOX'                , ( SELECT ID FROM COUNTRY WHERE NAME = 'USA'));
INSERT INTO STUDIO (NAME, NATIONALITYID) VALUES ('Tequila'            , ( SELECT ID FROM COUNTRY WHERE NAME = 'Mexico'));
INSERT INTO STUDIO (NAME, NATIONALITYID) VALUES ('Vodka Studio'       , ( SELECT ID FROM COUNTRY WHERE NAME = 'Rusia'));
INSERT INTO STUDIO (NAME, NATIONALITYID) VALUES ('Sorry Studio'       , ( SELECT ID FROM COUNTRY WHERE NAME = 'Canada'));
INSERT INTO STUDIO (NAME, NATIONALITYID) VALUES ('Kiwis Studio'       , ( SELECT ID FROM COUNTRY WHERE NAME = 'New Zeland'));
INSERT INTO STUDIO (NAME, NATIONALITYID) VALUES ('Copys'              , ( SELECT ID FROM COUNTRY WHERE NAME = 'China'));
INSERT INTO STUDIO (NAME, NATIONALITYID) VALUES ('Disney'             , ( SELECT ID FROM COUNTRY WHERE NAME = 'USA'));
INSERT INTO STUDIO (NAME, NATIONALITYID) VALUES ('Pixar'              , ( SELECT ID FROM COUNTRY WHERE NAME = 'USA'));
INSERT INTO STUDIO (NAME, NATIONALITYID) VALUES ('Dream Works'        , ( SELECT ID FROM COUNTRY WHERE NAME = 'USA'));
INSERT INTO STUDIO (NAME, NATIONALITYID) VALUES ('Toho'               , ( SELECT ID FROM COUNTRY WHERE NAME = 'Japan'));
INSERT INTO STUDIO (NAME, NATIONALITYID) VALUES ('Warner bros'        , ( SELECT ID FROM COUNTRY WHERE NAME = 'USA'));
INSERT INTO STUDIO (NAME, NATIONALITYID) VALUES ('Arte France Cinéma' , ( SELECT ID FROM COUNTRY WHERE NAME = 'France'));
INSERT INTO STUDIO (NAME, NATIONALITYID) VALUES ('Image Ten'          , ( SELECT ID FROM COUNTRY WHERE NAME = 'France'));
INSERT INTO STUDIO (NAME, NATIONALITYID) VALUES ('Decla-Bioscop'      , ( SELECT ID FROM COUNTRY WHERE NAME = 'Germany'));

--MOVIES
--data from themoviedb.org
INSERT INTO MOVIE ( NAME, DURATION, COST, INCOME, RELEASE_DATE, DIRECTORID, CLASIFICATIONID, COUNTRYID, STUDIOID)
    VALUES (
        'Jurassic Park',
        127,
        63000000.00,
        920100000.00,
        '1993-06-09',
        (SELECT   ID FROM DIRECTOR      WHERE NAME='Steven' and LASTNAME='Spielberg'),
        (SELECT   ID FROM CLASIFICATION WHERE SHORT_NAME='PG-13'),
        (SELECT   ID FROM COUNTRY       WHERE NAME='USA'),
        (SELECT   ID FROM STUDIO        WHERE NAME='Universal')
);
--
INSERT INTO MOVIE ( NAME, DURATION, COST, INCOME, RELEASE_DATE, DIRECTORID, CLASIFICATIONID, COUNTRYID, STUDIOID
)
    VALUES (
        'Dracula',
        72,
        355000.00,
        355000,
        '1931-02-12',
        (SELECT   ID FROM DIRECTOR      WHERE NAME= 'Tod' and LASTNAME='Browning'),
        (SELECT   ID FROM CLASIFICATION WHERE SHORT_NAME='PG-13'),
        (SELECT   ID FROM COUNTRY       WHERE NAME='USA'),
        (SELECT   ID FROM STUDIO        WHERE NAME='Universal')
);
--
INSERT INTO MOVIE ( NAME, DURATION, COST, INCOME, RELEASE_DATE, DIRECTORID, CLASIFICATIONID, COUNTRYID, STUDIOID)
    VALUES (
        'Godzilla',
        96,
        1000000,
        1500000,
        '1954-12-03',
        (SELECT   ID FROM DIRECTOR      WHERE NAME='Ishirou' and LASTNAME= 'Honda'),
        (SELECT   ID FROM CLASIFICATION WHERE SHORT_NAME='PG-13'),
        (SELECT   ID FROM COUNTRY       WHERE NAME='Japan'),
        (SELECT   ID FROM STUDIO        WHERE NAME='Toho')
);
--
INSERT INTO MOVIE ( NAME, DURATION, COST, INCOME, RELEASE_DATE, DIRECTORID, CLASIFICATIONID, COUNTRYID, STUDIOID)
    VALUES (
        'Casablanca',
        102,
        878000.00,
        10462500.00,
        '1942-11-26',
        (SELECT   ID FROM DIRECTOR      WHERE NAME='Michael' and LASTNAME= 'Curtiz'),
        (SELECT   ID FROM CLASIFICATION WHERE NAME='PG'),
        (SELECT   ID FROM COUNTRY       WHERE NAME='USA'),
        (SELECT   ID FROM STUDIO        WHERE NAME='Warner bros')
);
--
INSERT INTO MOVIE ( NAME, DURATION, COST, INCOME, RELEASE_DATE, DIRECTORID, CLASIFICATIONID, COUNTRYID, STUDIOID)
    VALUES (
        'The Day the Earth Stood Still ',
        92,
        1200000.00,
        1200000.00,
        '1951-09-17',
        (SELECT   ID FROM DIRECTOR      WHERE NAME='Robert' and LASTNAME= 'Wise'),
        (SELECT   ID FROM CLASIFICATION WHERE SHORT_NAME='PG-13'),
        (SELECT   ID FROM COUNTRY       WHERE NAME='USA'),
        (SELECT   ID FROM STUDIO        WHERE NAME='FOX')
);
--
INSERT INTO MOVIE (NAME, DURATION, COST, INCOME, RELEASE_DATE, DIRECTORID, CLASIFICATIONID, COUNTRYID, STUDIOID)
    VALUES (
        'Alien',
        117,
        11000000.00,
        104931801.00,
        '1979-05-25',
        (SELECT   ID FROM DIRECTOR      WHERE NAME='Ridley' and LASTNAME= 'Scott'),
        (SELECT   ID FROM CLASIFICATION WHERE SHORT_NAME='R'),
        (SELECT   ID FROM COUNTRY       WHERE NAME='USA'),
        (SELECT   ID FROM STUDIO        WHERE NAME='FOX')
);
--
--
INSERT INTO MOVIE ( NAME, DURATION, COST, INCOME, RELEASE_DATE, DIRECTORID, CLASIFICATIONID, COUNTRYID, STUDIOID)
    VALUES (
        'La Pianiste',
        131,
        3000000.00,
        9801375.00,
        '2002-03-28',
        (SELECT   ID FROM DIRECTOR      WHERE NAME='Michael' and LASTNAME= 'Haneke'),
        (SELECT   ID FROM CLASIFICATION WHERE SHORT_NAME='R'),
        (SELECT   ID FROM COUNTRY       WHERE NAME='France'),
        (SELECT   ID FROM STUDIO        WHERE NAME='Arte France Cinéma')
);
--
INSERT INTO MOVIE (NAME, DURATION, COST, INCOME, RELEASE_DATE, DIRECTORID, CLASIFICATIONID, COUNTRYID, STUDIOID)
    VALUES (
        'Rashomon',
        88,
        250000.00,
        96568.00,
        '1950-08-25',
        (SELECT   ID FROM DIRECTOR      WHERE NAME='Akira' and LASTNAME= 'Kurosawa'),
        (SELECT   ID FROM CLASIFICATION WHERE SHORT_NAME='PG-13'),
        (SELECT   ID FROM COUNTRY       WHERE NAME='Japan'),
        (SELECT   ID FROM STUDIO        WHERE NAME='Toho')
);
--
INSERT INTO MOVIE (NAME, DURATION, COST, INCOME, RELEASE_DATE, DIRECTORID, CLASIFICATIONID, COUNTRYID, STUDIOID)
    VALUES (
        'Night of the Living Dead',
        96,
        114000.00,
        30000000.00,
        '1968-10-01',
        (SELECT   ID FROM DIRECTOR      WHERE NAME='George' and LASTNAME= 'A. Romero'),
        (SELECT   ID FROM CLASIFICATION WHERE SHORT_NAME='R'),
        (SELECT   ID FROM COUNTRY       WHERE NAME='USA'),
        (SELECT   ID FROM STUDIO        WHERE NAME='Image Ten')
);
--
INSERT INTO MOVIE (NAME, DURATION, COST, INCOME, RELEASE_DATE, DIRECTORID, CLASIFICATIONID, COUNTRYID, STUDIOID)
    VALUES (
        'Das Cabinet des Dr. Caligari',
        78,
        18000.00,
        18000.00,
        '1921-03-19',
        (SELECT   ID FROM DIRECTOR      WHERE NAME='Robert' and LASTNAME= 'Wiene'),
        (SELECT   ID FROM CLASIFICATION WHERE SHORT_NAME='R'),
        (SELECT   ID FROM COUNTRY       WHERE NAME='Germany'),
        (SELECT   ID FROM STUDIO        WHERE NAME='Decla-Bioscop')
);
