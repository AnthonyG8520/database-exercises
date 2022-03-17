USE codeup_test_db

SELECT 'Albums by Pink Floyd' AS 'Info';
SELECT name FROM albums WHERE artist = 'Pink FLoyd';

SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' AS 'Info';
SELECT release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT 'The genre for Nevermind' AS 'Info';
SELECT genre FROM albums WHERE name = 'Nevermind';

SELECT 'albums released in the 1990s' AS 'Info';
SELECT name FROM albums WHERE release_date < 1990;

SELECT 'less than 20 million in sales' AS 'Info';
SELECT name FROM albums WHERE sales < 20.0;

SELECT 'albums with genre of rock' AS 'Info';
SELECT name FROM albums WHERE genre = 'Rock';







