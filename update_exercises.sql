USE codeup_test_db;




select * FROM albums;

UPDATE albums
Set sales = sales * 10;

select * from albums where < 1980;

SELECT albums FROM albums
WHERE release_date < '1980';
UPDATE albums
SET release_date = '1800'
WHERE release_date < '1980';
SELECT * FROM albums;

select * from albums where artist_name = 'Michael Jackson';



