DROP TABLE USERS
DROP TABLE BADGES
CREATE TABLE USERS (ID INTEGER PRIMARY KEY,NAME VARCHAR(20),LOCATION VARCHAR(20))
INSERT INTO USERS VALUES(1,'SAL','CALIFORNIA')
INSERT INTO USERS VALUES(2,'JOHN','NEW YORK')
INSERT INTO USERS VALUES(3,'LAURA','WASHINGTON')
CREATE TABLE BADGES (ID INTEGER PRIMARY KEY,NAME VARCHAR(20),POINTS INTEGER)
SELECT * FROM USERS