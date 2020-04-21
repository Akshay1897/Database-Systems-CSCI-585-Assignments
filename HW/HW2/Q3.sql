--www.sqlfiddle.com
--DB: PostgreSQL 9.6


--Build Schema:

CREATE TABLE ProjectProgress
(
PID CHAR(30) NOT NULL,
Step INTEGER NOT NULL,
Status CHAR(1) NOT NULL,
PRIMARY KEY (PID,Step)
);

INSERT INTO ProjectProgress(PID, Step, Status) VALUES ('P100', 0, 'C');
INSERT INTO ProjectProgress(PID, Step, Status) VALUES ('P100', 1, 'W');
INSERT INTO ProjectProgress(PID, Step, Status) VALUES ('P100', 2, 'W');
INSERT INTO ProjectProgress(PID, Step, Status) VALUES ('P201', 0, 'C');
INSERT INTO ProjectProgress(PID, Step, Status) VALUES ('P201', 1, 'C');
INSERT INTO ProjectProgress(PID, Step, Status) VALUES ('P333', 0, 'W');
INSERT INTO ProjectProgress(PID, Step, Status) VALUES ('P333', 1, 'W');
INSERT INTO ProjectProgress(PID, Step, Status) VALUES ('P333', 2, 'W');
INSERT INTO ProjectProgress(PID, Step, Status) VALUES ('P333', 3, 'W');

--Run SQL:

SELECT PID
FROM ProjectProgress
WHERE (Step = 0 AND Status = 'C') AND PID IN (SELECT PID FROM ProjectProgress WHERE (Step = 1 AND Status = 'W'));
