DROP TABLE IF EXISTS HW3_loc;

CREATE TABLE HW3_loc (Label_name VARCHAR(1000), Geo_coord GEOMETRY);

INSERT INTO HW3_loc VALUES('Leavey Library',ST_GeomFromText('POINT(-118.283013 34.021685)'));
INSERT INTO HW3_loc VALUES('Doheny Library',ST_GeomFromText('POINT(-118.283970 34.020256)'));
INSERT INTO HW3_loc VALUES('Science and Engineering Library',ST_GeomFromText('POINT(-118.288739 34.019702)'));
INSERT INTO HW3_loc VALUES('Gaughan and Tiberti Library',ST_GeomFromText('POINT(-118.282608 34.018600)'));
INSERT INTO HW3_loc VALUES('Wilson Dental Library',ST_GeomFromText('POINT(-118.286136 34.023946)'));

INSERT INTO HW3_loc VALUES('Literatea Cafe',ST_GeomFromText('POINT(-118.283312 34.020106)'));
INSERT INTO HW3_loc VALUES('Starbucks',ST_GeomFromText('POINT(-118.288035 34.024619)'));
INSERT INTO HW3_loc VALUES('The Habit Burger Grill',ST_GeomFromText('POINT(-118.286431 34.020152)'));
INSERT INTO HW3_loc VALUES('Little Galen Cafe',ST_GeomFromText('POINT(-118.287103 34.022881)'));
INSERT INTO HW3_loc VALUES('Tutor Hall Cafe',ST_GeomFromText('POINT(-118.289988 34.020042)'));

INSERT INTO HW3_loc VALUES('Tommy Trojan',ST_GeomFromText('POINT(-118.285431 34.020562)'));
INSERT INTO HW3_loc VALUES('Trojan Sword',ST_GeomFromText('POINT(-118.288411 34.022825)'));
INSERT INTO HW3_loc VALUES('Traveler the Horse',ST_GeomFromText('POINT(-118.285180 34.020052)'));
INSERT INTO HW3_loc VALUES('Generations Fountain',ST_GeomFromText('POINT(-118.283241 34.022212)'));
INSERT INTO HW3_loc VALUES('The Inverted Fountain',ST_GeomFromText('POINT(-118.285641 34.022244)'));


SELECT ST_AsText(ST_ConvexHull(ST_Collect(r.Geo_coord::geometry)))
FROM HW3_loc As r;


SELECT Label_name,Geo_coord
FROM HW3_loc
WHERE Label_name<>'Traveler the Horse'
ORDER BY Geo_coord <-> ST_GeomFromText('POINT(-118.285180 34.020052)')::geometry
LIMIT 4;
