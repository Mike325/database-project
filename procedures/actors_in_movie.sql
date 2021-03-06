--SET TERMINATOR @
-- Stored procedures

--By setting the SCHEMA as FILM there's no need to refer to the SCHEME on each table creation
--SET SCHEMA = MOVIEINDEX;

CREATE or REPLACE PROCEDURE MOVIEINDEX.ACTOR_IN_MOVIE ( IN MOVIENAME VARCHAR(50), OUT ACTORS INT )
LANGUAGE SQL
P4:BEGIN
    DECLARE MOVIEID int;

    DECLARE cursor1 CURSOR FOR SELECT ID FROM MOVIEINDEX.MOVIE WHERE MOVIEINDEX.MOVIE.NAME = MOVIENAME;
    OPEN cursor1;
        FETCH FROM cursor1 INTO MOVIEID;
    CLOSE cursor1;

    DECLARE cursor2 CURSOR FOR SELECT COUNT(*) AS ACTORS_IN FROM MOVIEINDEX.MOVIE, MOVIEINDEX.ACTOR_MOVIE, MOVIEINDEX.ACTOR WHERE MOVIEINDEX.MOVIE.ID = MOVIEID AND MOVIEINDEX.ACTOR_MOVIE.MOVIEDID = MOVIEID AND MOVIEINDEX.ACTOR.ID = MOVIEINDEX.ACTOR_MOVIE.ACTORID;
    OPEN cursor2;
        FETCH FROM cursor2 INTO ACTORS;
    CLOSE cursor2;
END P4
@
