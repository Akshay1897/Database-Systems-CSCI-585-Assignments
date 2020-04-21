--www.sqlfiddle.com
--DB: PostgreSQL 9.6

--FIrst, I found Instructors who teaches "Scratch", "Python" and "JavaScript"
--Then I intersected all of them
--Assumption: Order of subjects doesnot matter



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


Run SQL:

(SELECT s1.Instructor FROM Candidates s1 WHERE s1.Subject = 'Scratch')
INTERSECT
( SELECT s2.Instructor FROM Candidates s2 WHERE s2.Subject = 'Python')
INTERSECT
( SELECT s3.Instructor FROM Candidates s3 WHERE s3.Subject = 'JavaScript')