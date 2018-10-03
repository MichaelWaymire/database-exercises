USE codeup_test_db;

-- Use INSERT to add records for all the albums from this
--  list on Wikipedia that claim over 30 million sales
-- (the first two tables). For sales data, use the 'sales
-- certification' column of the tables, not 'claimed sales'.
-- For artists listed with 'Various Artists', just use the
--  primary artist's name.
--
-- First write your queries as separate INSERT statements for
-- each record and test. You should see no output.
--
-- Refactor your script to use a single INSERT statement
-- for all the records and test it again. Again, this should
-- not generate any output.


INSERT INTO albums (artist_firstname, artist_lastname, album_name, release_date, sales, genre)
VALUES ('Michael', 'Jackson','Thriller', 1982, 47.3, 'Pop'),
       ('Eagles', ' ', 'Their Greatest hits (71-75', 1976, 41.2, 'Country Rock' ),
       ('AC/', 'DC', 'Back in Black', 1976, '26.1', 'Hard Rock'),
       ('Pink', 'Floyd', 'The Dark Side of the Moon', 1973, 24.2, 'Progressive Rock'),
       ('Meat', 'Loaf', 'Bat Out of Hell', 1977, 21.5, 'Hard Rock'),
       ('Whitney', 'Houston', 'The Bodyguard', 1992, 28.5, 'R&B'),
       ('',)
       ()
       ()
       ()
       ()