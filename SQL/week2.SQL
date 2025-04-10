SELECT COUNT(no), COUNT(name) FROM sample51;

SELECT ALL name FROM sample51;
SELECT DISTINCT name FROM sample51;

SELECT COUNT(ALL name), COUNT(DISTINCT name) FROM sample51;

SELECT SUM(quantity) FROM sample51;

SELECT AVG(quantity) FROM sample51;

SELECT MIN(quantity), MAX(quantity), MIN(name), MAX(name) FROM sample51;

SELECT name, COUNT(name) FROM sample51 WHERE COUNT(name) = 1 GROUP BY name;

SELECT name, COUNT(name) FROM sample51 GROUP BY name HAVING COUNT(name)=1;

SELECT no,quantity FROM sample51 GROUP BY no, quantity;

SELECT name, COUNT(name), SUM(quantity) FROM sample51 GROUP BY name ORDER BY SUM(quantity) DESC;

DELETE FROM sample54 WHERE a = (SELECT MIN(a) FROM sample54)

SELECT MIN(a) FROM sample54;
SELECT no FROM sample54;
SELECT MIN(a), MAX(no) FROM sample54;
SELECT no, a FROM sample54;

DELETE FROM sample54 WHERE a = (SELECT MIN(a) FROM sample54);

SELECT (SELECT COUNT(*) FROM sample51) AS sq1,(SELECT COUNT(*) FROM sample54) AS sq2;

UPDATE sample54 SET a = (SELECT MAX(a) FROM sample54);

SELECT * FROM (SELECT * FROM sample54) sq;

INSERT INTO sample541 VALUES(
 (SELECT COUNT(*) FROM sample51),
 (SELECT COUNT(*) FROM sample54),
 );

 INSERT INTO sample541 SELECT 1,2;

 UPDATE sample 551 SET a = '있음' WHERE EXISTS (SELECT * FROM sample552 WHERE no2 = no);

 UPDATE sample551 SET a = '없음' WHERE NOT EXISTS (SELECT * FROM sample552 WHERE no2 = no);

 UPDATE sample 551 SET a = '있음' WHERE EXISTS (SELECT * FROM sample552 WHERE no2 = no);

 UPDATE sample 551 SET a = '있음' WHERE EXISTS (SELECT * FROM sample552 WHERE sample552.no2 = sample551.no);

SELECT * FROM sample551 WHERE no = 3 or no = 5;
SELECT * FROM sample551 WHERE no IN (3,5);
SELECT * FROM sample551 WHERE no = IN (SELECT no2 FROM sample552);

CREATE TABLE sample62( no INTEGER NOT NULL, a VARCHAR(30), b DATE);

ALTER TABLE sample62 ADD newcol INTEGER;

ALTER TABLE sample62 MODIFY newcol VARCHAR(20);

ALTER TABLE sample62 CHANGE newcol c VARCHAR(20);

ALTER TABLE sample62 DROP c;

ALTER TABLE sample MODIFY col VARCHAR(30);

CREATE TABLE sample631(
 a INTEGER NOT NULL,
 b INTEGER NOT NULL UNIQUE,
 c VARCHAR(30)
 );

 CREATE TABLE sample632(
 a INTEGER NOT NULL,
 b INTEGER NOT NULL UNIQUE,
 c VARCHAR(30)
 CONSTRAINT pkey_sample PRIMARY KEY (no, sub_no)
 );

 ALTER TABLE sample631 MODIFY c VARCHAR (30) NOT NULL;

 ALTER TABLE sample631 ADD CONSTRAINT pkey_sample631 PRIMARY KEY(a);

 ALTER TABLE sample631 MODIFY c VARCHAR(30);

 ALTER TABLE sample631 DROP CONSTRAINT pkey_sample631;

 CREATE TABLE sample634(
 p INTEGER NOT NULL,
 a VARCHAR NOT NULL,
 CONSTRAINT pkey_sample634 PRIMARY KEY(p)
 );

 CREATE INDEX isample65 ON sample62(no);

 CREATE INDEX isample65 ON sample62(a);

 EXPLAIN SELECT * FROM sample62 WHERE a = 'a';

 CREATE VIEW sample_view_67 AS SELECT * FROM sample54;

 SELECT * FROM sample_view_67





 
