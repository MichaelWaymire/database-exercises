USE codeup_test_db;

DROP TABLE IF EXISTS albums;


CREATE TABLE albums (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  artist_name VARCHAR (300),
  album_name VARCHAR (300),
  release_date int,
  sales int (100),
  genre VARCHAR (200),
  primary key (id)
)