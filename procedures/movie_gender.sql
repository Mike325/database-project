-- --#SET TERMINATOR @
-- Stored procedures

--By setting the SCHEMA as FILM there's no need to refer to the SCHEME on each table creation
SET SCHEMA = MOVIEINDEX;

CREATE or REPLACE PROCEDURE MOVIE_GENEDER ( IN MOVIENAME VARCHAR(50), IN GENEDERNAME VARCHAR(50) )
LANGUAGE SQL
P2:BEGIN
    DECLARE GENEDER_ID int;
    DECLARE MOVIE_ID int;

    DECLARE cursor1 CURSOR FOR SELECT ID FROM MOVIE WHERE MOVIENAME = MOVIE.NAME;
    DECLARE cursor2 CURSOR FOR SELECT ID FROM GENEDER WHERE GENEDERNAME = GENEDER.NAME;
    OPEN cursor1;
        FETCH FROM cursor1 INTO GENEDER_ID;
    CLOSE cursor1;
    OPEN cursor2;
        FETCH FROM cursor2 INTO MOVIE_ID;
    CLOSE cursor2;

    INSERT INTO GENEDER_MOVIE (GENEDERID, MOVIEID) VALUES (GENEDER_ID, MOVIE_ID);
END P2
@