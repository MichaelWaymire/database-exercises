USE codeup_test_db;

DROP TABLE IF EXISTS albums;


CREATE TABLE albums (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT primary key,
  artist_name VARCHAR (100),
  album_name VARCHAR (100),
  release_date DATE,
  sales float (5,5),
  genre VARCHAR (200)
);

