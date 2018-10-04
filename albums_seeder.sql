USE codeup_test_db;


TRUNCATE albums;

INSERT INTO albums (artist_name, album_name, release_date, sales, genre)
VALUES ('Michael Jackson','Thriller', 1982, 66, 'Pop'),
       ('Eagles', 'Their Greatest hits', 1976, 51, 'Country Rock'),
       ('AC/DC', 'Back in Black', 1976, 50, 'Hard Rock'),
       ('Pink Floyd', 'The Dark Side of the Moon', 1973, 43, 'Progressive Rock'),
       ('Meat Loaf', 'Bat Out of Hell', 1977, 42, 'Hard Rock'),
       ('Whitney Houston', 'The Bodyguard', 1992, 42, 'R&B'),
       ('Eagles', 'Hotel California', 1976, 40, 'Soft Rock'),
       ('Bee Gees', 'Saturday Night Fever', 1977, 40, 'Disco'),
       ('Fleetwood Mac', 'Rumors', 1977, 40, 'Soft Rock'),
       ('Led Zeppelin', 'Led Zeppelin IV', 1971, 37,'Hard Rock'),
       ('Michael Jackson', 'Bad', 1987, 35, 'Pop'),
       ('Alanis Morissete', 'Jagged Little Pill', 1995, 33, 'Alternative Rock'),
       ('Shania Twain', 'Come On Over', 1997, 33, 'Country'),
       ('Celine Dion', 'Falling into You', 1996, 32, 'Pop'),
       ('The Beatles', 'Sgt. Peppers Lonely Hearts Club Band', 1967, 32, 'Rock'),
       ('Michael Jackson', 'Dangerous', 1991, 32, 'Rock'),
       ('Adele', '21', 2011, 31, 'Pop'),
       ('Celine Dion', 'Lets Talk About Love', 1997, 31, 'Pop'),
       ('The Beatles', '1', 2000, 31, 'Rock'),
       ('ABBA', 'Gold: Greatest Hits', 1992, 30, 'Pop'),
       ('Modanna', 'The Immaculate Collection',  1990, 30, 'Pop'),
       ('The Beatles', 'Abbey Road', 1969, 30, 'Rock'),
       ('Bruce Springsteen', 'Born in the U.S.A', 1984, 30, 'Heartland Rock'),
       ('Dire Straits', ' Brothers in Arms', 1985, 30, 'Roots Rock'),
       ('James Horner', 'Titanic: Music from the Motion Picture', 1997, 30, 'Soundtack'),
       ('Metallica', 'Metallica', 1991, 30, 'Heavy Metal'),
       ('Nirvana', 'Nevermind', 1991, 30, 'Grunge'),
       ('Pink Floyd', 'The Wall', 1979, 30, 'Progressive Rock'),
       ('Santana', 'Supernatural', 1999, 30, 'Latin Rock'),
       ('Gunes N Roses', 'Appetit for Destruction', 1987, 30, 'Hard Rock');