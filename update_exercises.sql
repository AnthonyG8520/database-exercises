USE codeup_test_db;

SELECT id, artist, name, release_date, sales, genre FROM albums;
SELECT 'sales * 10' AS 'Info';
UPDATE albums SET sales = sales * 10;

SELECT id, artist, name, release_date, sales, genre FROM albums WHERE release_date < 1980;
SELECT '1980s to 1800s' AS 'Info';
UPDATE albums SET release_date = 1846 WHERE release_date < 1980;

SELECT id, artist, name, release_date, sales, genre FROM albums WHERE artist = 'Michael Jackson';
SELECT 'Peter Jackson' AS 'Info';
UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';






