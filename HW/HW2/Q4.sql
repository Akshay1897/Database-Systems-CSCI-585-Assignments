--www.sqlfiddle.com
--DB: PostgreSQL 9.6



--Build Schema:

CREATE TABLE JunkMail
( 
Name CHAR(30) NOT NULL,
Address CHAR(1) NOT NULL,
ID INTEGER NOT NULL,
SameFam INTEGER NULL,
PRIMARY KEY (ID)
);

INSERT INTO JunkMail VALUES
('Alice', 'A', 10, NULL),
('Bob', 'B', 15, NULL),
('Carmen', 'C', 22, NULL),
('Diego', 'A', 9, 10),
('Ella', 'B', 3, 15),
('Jolly', 'B', 4, 15),
('Farkhad', 'D', 11, NULL);

DELETE FROM JunkMail WHERE 
((ID IN (SELECT SameFam FROM JunkMail)) OR (SELECT SameFam is NOT NULL));

--RUN SQL:

SELECT * FROM JunkMail;