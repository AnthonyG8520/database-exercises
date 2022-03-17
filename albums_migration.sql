USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums(
    id INT UNSIGNED AUTO_INCREMENT,
    artist VARCHAR(20),
    name VARCHAR(20),
    release_date INT,
    sales FLOAT,
    genre VARCHAR(40),
    PRIMARY KEY(id)
)

