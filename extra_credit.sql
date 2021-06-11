--Artist Table

--Select 10 artists in reverse alphabetical order.

SELECT * FROM artist
ORDER BY name DESC
LIMIT 10;

--Select all artists that start with the word ‘Black’.

SELECT * FROM artist
WHERE name LIKE 'Black%';

--Select all artists that contain the word ‘Black’.

SELECT * FROM artist
WHERE name LIKE '%Black%';


-- Employee Table

--Find the birthdate for the youngest employee.

SELECT MAX(birth_date) FROM employee;

--Find the birthdate for the oldest employee.

SELECT MIN(birth_date) FROM employee;


--Invoice Table

--Count how many orders were in CA, TX, or AZ (use IN).

SELECT COUNT(*) FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');

--Get the average total of the orders.

SELECT AVG(total) FROM invoice;


--More Join Queries

--Get all playlist_track track_ids where the playlist name is Music.

SELECT pt.track_id, p.name FROM playlist_track pt
JOIN playlist p ON pt.playlist_id = p.playlist_id
WHERE p.name = 'Music';

--Get all track names for playlist_id 5.

SELECT t.name FROM track t
JOIN playlist_track pt ON pt.track_id = t.track_id
WHERE pt.track_id = 5;

--Get all track names and the playlist name that they’re on ( 2 joins ).

SELECT t.name track_name, p.name playlist_name FROM track t
JOIN playlist_track pt ON t.track_id = pt.track_id
JOIN playlist p ON pt.playlist_id = p.playlist_id;

--Get all track names and album titles that are the genre Alternative & Punk ( 2 joins ).

SELECT t.name track_name, a.title album_name FROM track t
JOIN album a ON t.album_id = a.album_id
JOIN genre g ON g.genre_id = t.genre_id
WHERE g.name = 'Alternative & Punk';