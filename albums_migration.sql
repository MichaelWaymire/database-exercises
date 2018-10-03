USE codeup_test_db;

-- DROP DATABASE IF EXISTS codeup_test_db;
-- CREATE DATABASE IF NOT EXISTS codeup_test_dp;

-- Todo
-- id — auto incrementing unsigned integer primary key
-- artist — string for storing the recording artist name
-- name — string for storing a record name
-- release_date — integer representing year record was released
-- sales — floating point value for number of records sold (in millions)
-- genre — string for storing the record's genre(s)
-- Open a terminal, and run the script as codeup_test_user
-- with the following command:

DROP TABLE IF EXISTS albums;


CREATE TABLE IF NOT EXISTS albums (
  id INT UNSIGNED NOT NULL  AUTO_INCREMENT,
  artist_firstname VARCHAR (50),
  artist_lastname VARCHAR (100) NOT NULL,
  release_date DATE 2018-03-13,
  sales float (5,5),
  genre VARCHAR (200),

);