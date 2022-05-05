/*DROP DATABASE bdd_cours;*/
/*CREATE DATABASE bdd_cours;
USE bdd_cours*/


CREATE TABLE temperature(username INT, c_timestamp INT, c_date DATE);

INSERT INTO temperature VALUES(10, UNIX_TIMESTAMP(), current_date());
INSERT INTO temperature VALUES(11, UNIX_TIMESTAMP(), current_date());
INSERT INTO temperature VALUES(12, UNIX_TIMESTAMP(), current_date());
INSERT INTO temperature VALUES(13, UNIX_TIMESTAMP(), current_date());
INSERT INTO temperature VALUES(14, UNIX_TIMESTAMP(), current_date());
INSERT INTO temperature VALUES(15, UNIX_TIMESTAMP(), current_date());
INSERT INTO temperature VALUES(14, UNIX_TIMESTAMP(), current_date());
INSERT INTO temperature VALUES(14, UNIX_TIMESTAMP(), current_date());
INSERT INTO temperature VALUES(15, UNIX_TIMESTAMP(), current_date());
INSERT INTO temperature VALUES(16, UNIX_TIMESTAMP(), current_date());

DELIMITER //
CREATE PROCEDURE add_ins(temp int) BEGIN
SELECT COUNT(*) INTO @cnt from temperature;
if (@cnt > 100) THEN
DELETE FROM temperature ORDER BY c_date ASC, c_timestamp ASC LIMIT 1;
END IF;
INSERT INTO temperature VALUES(temp, UNIX_TIMESTAMP(), current_date());
END //
