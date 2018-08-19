--Create a database named MOVIESDB
CREATE DB MOVIESDB;

CONNECT TO MOVIESDB;

CREATE SCHEMA FILM;
CREATE SCHEMA MOVIEINDEX;
--By setting the SCHEMA as FILM there's no need to refer to the SCHEME on each table creation
SET SCHEMA = MOVIEINDEX;


-- Country
CREATE TABLE COUNTRY (
    ID      INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
    NAME    VARCHAR(30) UNIQUE NOT NULL,
    PRIMARY KEY(ID)
);
--IN MOVIEINDEX;

-- Gender
CREATE TABLE GENDER (
    ID      INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
    NAME    VARCHAR(30) UNIQUE NOT NULL,
    PRIMARY KEY(ID)
);
--IN MOVIEINDEX;

-- DIRECTOR
CREATE TABLE DIRECTOR (
    ID            INTEGER            NOT        NULL GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
    NAME          VARCHAR(50)        NOT        NULL,
    LASTNAME      VARCHAR(30)        NOT        NULL,
    NATIONALITYID INTEGER            NOT        NULL,
    FOREIGN       KEY(NATIONALITYID) REFERENCES COUNTRY(ID),
    PRIMARY       KEY(ID)
);
--IN MOVIEINDEX;

-- ACTOR
CREATE TABLE ACTOR (
    ID            INTEGER            NOT        NULL GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
    NAME          VARCHAR(50)        NOT        NULL,
    LASTNAME      VARCHAR(30)        NOT        NULL,
    NATIONALITYID INTEGER            NOT        NULL,
    FOREIGN       KEY(NATIONALITYID) REFERENCES COUNTRY(ID),
    PRIMARY       KEY(ID)
);
--IN MOVIEINDEX;

-- Studio
CREATE TABLE STUDIO (
    ID      INTEGER            NOT        NULL GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
    NAME    VARCHAR(30)        UNIQUE     NOT  NULL,
    NATIONALITYID   INTEGER    NOT        NULL,
    FOREIGN KEY(NATIONALITYID) REFERENCES COUNTRY(ID),
    PRIMARY KEY(ID)
);
--IN MOVIEINDEX;

-- CLASIFICATION
CREATE TABLE CLASIFICATION (
    ID          INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
    SHORT_NAME  VARCHAR(30) UNIQUE NOT NULL,
    NAME        VARCHAR(30) UNIQUE NOT NULL,
    PRIMARY     KEY(ID)
);
--IN MOVIEINDEX;


-- MOVIES
CREATE TABLE MOVIE (
    ID              INTEGER              NOT        NULL GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
    NAME            VARCHAR(50)          NOT        NULL,
    DURATION        INTEGER              NOT        NULL,
    COST            FLOAT                NOT        NULL,
    INCOME          FLOAT                NOT        NULL,
    RELEASE_DATE    DATE                 NOT        NULL,
    CLASIFICATIONID INTEGER              NOT        NULL,
    FOREIGN         KEY(CLASIFICATIONID) REFERENCES CLASIFICATION(ID),
    COUNTRYID       INTEGER              NOT        NULL,
    FOREIGN         KEY(COUNTRYID)       REFERENCES COUNTRY(ID),
    STUDIOID        INTEGER              NOT        NULL,
    FOREIGN         KEY(STUDIOID)        REFERENCES STUDIO(ID),
    DIRECTORID      INTEGER              NOT        NULL,
    FOREIGN         KEY(DIRECTORID)      REFERENCES DIRECTOR(ID),
    PRIMARY         KEY(ID)
);
--IN MOVIEINDEX;

-- Actor-Movie
CREATE TABLE ACTOR_MOVIE (
    ACTORDID INTEGER NOT NULL,
    FOREIGN  KEY(ACTORDID) REFERENCES ACTOR(ID),
    MOVIEDID  INTEGER NOT NULL,
    FOREIGN  KEY(MOVIEDID) REFERENCES MOVIE(ID)
);
--IN MOVIEINDEX;

-- Gender-Movie
CREATE TABLE GENDER_MOVIE (
    MOVIEID  INTEGER NOT NULL,
    FOREIGN  KEY(MOVIEID) REFERENCES MOVIE(ID),
    GENDERID INTEGER NOT NULL,
    FOREIGN  KEY(GENDERID) REFERENCES GENDER(ID)
);
--IN MOVIEINDEX;
