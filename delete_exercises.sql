USE codeup_test_db;

SELECT 'albums released after 1991' AS 'info';
DELETE FROM albums WHERE release_date > 1991;

SELECT 'albums with genre disco' AS 'info';
DELETE FROM albums WHERE genre = 'Disco';

SELECT 'albums by whitney houston' AS 'info';
DELETE FROM albums WHERE artist = 'Whitney Houston';