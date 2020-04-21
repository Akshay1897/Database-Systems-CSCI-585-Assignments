--www.sqlfiddle.com
--DB: PostgreSQL 9.6


--Find Instructors who teach "Scratch", "Python" and "JavaScript" separately.
--Combine output of above step using Distinct which removes duplicate entries of Instructors.


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


Run SQL:

Select Distinct Instructor From Candidates Where 
Instructor in (Select Instructor From Candidates Where Subject = 'Scratch')
AND
Instructor in (Select Instructor From Candidates Where Subject = 'Python')
AND
Instructor in (Select Instructor From Candidates Where Subject = 'JavaScript');