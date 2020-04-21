--www.sqlfiddle.com
--DB: PostgreSQL 9.6

--Assumption: Every Day we create a new table for bookings of labs.
--Assumption: 1.) Bookings are made in a group of 1hour time slots.
--  		  2.) Eg: The bookings of Groups who wish to book labs for multiple hours will be broken down into 1hour time slots each.
--			  3.) Now, the combination of roomNum and startTime is a unique combination.
--			  4.) Case : If groupA want to book room 101 for time 12-3, but already groupB exists in the same room from 2-4; then the entire request of groupA will be discarded.


--Build Schema:

CREATE TABLE ProjectRoomBookings
(
roomNum INTEGER NOT NULL,
startTime INTEGER NOT NULL,
endTime INTEGER NOT NULL,
groupName CHAR(10) NOT NULL,
PRIMARY KEY (roomNum, startTime),
CONSTRAINT Check_start_end2 CHECK((startTime < endTime))
);

INSERT INTO ProjectRoomBookings VALUES(101, 10, 12, 'ABC');
INSERT INTO ProjectRoomBookings VALUES(104, 13, 15, 'MNS');
INSERT INTO ProjectRoomBookings VALUES(101, 11, 14, 'XYZ');
	-- Group XYZ's request will be discarded completely.
