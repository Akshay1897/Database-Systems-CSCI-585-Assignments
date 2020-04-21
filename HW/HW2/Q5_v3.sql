--www.sqlfiddle.com
--DB: PostgreSQL 9.6

--Created new table Best which contains only the required Subjects.
--Then just find all Instructors who teaches all the subjects from table Best.


Build Schema:

CREATE TABLE Candidates
(Instructor CHAR(30) NOT NULL, Subject CHAR(30) NOT NULL, PRIMARY KEY (Instructor, Subject));

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

SELECT s1.Instructor
FROM Candidates s1
WHERE s1.Subject IN (SELECT Subject FROM Best)
GROUP BY s1.Instructor
HAVING COUNT(*) = (SELECT COUNT(*) FROM Best);