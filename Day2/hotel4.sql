CREATE DATABASE reservationdb;

USE reservationdb;

SELECT *
FROM reservations;

-- 1. find the room name with 7 characters long from last 
SELECT reservationdb.rooms.roomname,
right(roomname,7)
From reservationdb.rooms;

-- 2. find the roomname with 7 characters long from starting
SELECT reservationdb.rooms.roomname,
LEFT(roomname,7)
From reservationdb.rooms;


-- 3. remove the ND from roomid of all the rooms
SELECT reservationdb.rooms.roomid,
TRIM(trailing 'ND' FROM roomid)
From reservationdb.rooms;


-- 4. find the location of 'N' in rooms id
SELECT  reservationdb.rooms.roomid,
POSITION('O' IN roomid)
FROM rooms;

-- 5. get the substring from index 3 to 7 characters from roomname column
SELECT reservationdb.rooms.roomname,
SUBSTR(roomname, 3,7)
FROM  reservationdb.rooms;


-- 6. show sum of the baseprice of all the rooms according to bedType and take average of that
SELECT avg(some)
FROM
(SELECT sum(rooms.) As some
FROM flight.flights
GROUP BY airline)
 grade_table;
-- 7. show all the room id those having roomname name and reservation entires


-- 8. display the rooms who shares  same bedtype
