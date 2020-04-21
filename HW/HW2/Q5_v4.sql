--www.sqlfiddle.com
--DB: PostgreSQL 9.6

--Created new table Best which contains only the required Subjects.
--Join Best and Candidates and find all Instructors who teaches all subjects mentioned in Best using Count().

Build Schema:

CREATE TABLE Candidates
(Instructor CHAR(30) NOT NULL,
Subject CHAR(30) NOT NULL,
PRIMARY KEY (Instructor, Subject)
);

INSERT into Candidates VALUES ('Aleph', 'Scratch');
INSERT into Candidates VALUES ('Aleph', 'Java');
INSERT into Candidates VALUES ('Aleph', 'Processing');
INSERT into Candidates VALUES ('Bit', 'Python');
INSERT into Candidates VALUES ('Bit', 'JavaScript');
INSERT into Candidates VALUES ('Bit', 'Java');
INSERT into Candidates VALUES ('CRC', 'Python');
INSERT into Candidates VALUES ('CRC', 'JavaScript');
INSERT into Candidates VALUES ('Dat', 'Scratch');
INSERT into Candidates VALUES ('Dat', 'Python');
INSERT into Candidates VALUES ('Dat', 'JavaScript');
INSERT into Candidates VALUES ('Emscr', 'Scratch');
INSERT into Candidates VALUES ('Emscr', 'Processing');
INSERT into Candidates VALUES ('Emscr', 'JavaScript');
INSERT into Candidates VALUES ('Emscr', 'Python');

CREATE TABLE Best
(Subject CHAR(30) NOT NULL, PRIMARY KEY (Subject));

INSERT into Best VALUES ('Scratch');
INSERT into Best VALUES ('Python');
INSERT into Best VALUES ('JavaScript');

Run SQL:

SELECT Instructor 
FROM Candidates join Best
ON Candidates.Subject = Best.Subject
GROUP BY Instructor
HAVING COUNT(*) = (SELECT COUNT(*) FROM Best)