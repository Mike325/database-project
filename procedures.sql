-- --#SET TERMINATOR @
-- Stored procedures

--By setting the SCHEMA as FILM there's no need to refer to the SCHEME on each table creation
SET SCHEMA = MOVIEINDEX;

CREATE OR REPLACE PROCEDURE GetFormData( IN p_Reviewer varchar(20))
result sets 1
specific GetFormData
LANGUAGE SQL
P1:
BEGIN
    declare c1 cursor for SELECT * FROM TRAININGDB.FormData WHERE Reviewer=p_Reviewer;
    open c1;
END P1



@
