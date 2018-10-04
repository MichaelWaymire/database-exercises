use codeup_test_db;

-- Albums released after 1991
-- Albums with the genre 'disco'
-- Albums by 'Whitney Houston' (...or maybe an artist of your choice)
delete * from albums where release_date = 1991;

delete * from albums where genra = 'Disco';

delete * from albums where artist_name = 'Whitney Houston';
