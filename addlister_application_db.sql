CREATE DATABASE adlister_db;


create table users (

    id INT unsigned NOT NULL AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(16) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE ads (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    title varchar(250) NOT NUll,
    description varchar(500),
    category varchar(100) NOT NUll,
    user_id INT UNSIGNED NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY(user_id) REFERENCES  users (id)
);


CREATE TABLE categories (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  category VARCHAR(255),
  PRIMARY KEY (id)
);

CREATE TABLE ad_category (
  ad_id INTEGER UNSIGNED NOT NULL,
  category_id INTEGER UNSIGNED NOT NULL,
  FOREIGN KEY (ad_id) REFERENCES ads (id),
  FOREIGN KEY (category_id) REFERENCES categories (id)
);

insert into categories (category)
values ('help wanted'),
       ('furniture'),
       ('giveaway'),
       ('tech'),
       ('services');


insert into users (username, email, password)
values ('tumcor', 'tumcor@test.com', 'fakepassword'),
       ('okiee', 'okiee@test.com', 'password@1234'),
       ('lutherburger', 'agressivlyamerican@test.com','heartattach4321'),
       ('immacow', 'idontgomeow@test.com', 'igomooooo'),
       ('farelle', 'purpledoge@test.com', 'awooawoo1234'),
       ('pattypat', 'pattypat@yoogle.com', 'p@77YPaT!'),
       ('JimmyBean', 'jamesbean@yoogle.com', 'B1g80y$@uc3'),
       ('AlabamaRed', 'allenRedmond@yoogle.com', 'WarT!d#'),
       ('mSCalidron', 'MissSippi@yoogle.com', '5ey3dR1ver'),
       ('purpleKale', 'kellyaldamon@yoogle.com', 'p!nk@ndRed');


insert into ads (title, description, category, user_id)
values ('Couch for sell', 'Selling couch for $200 or BO', 'furniture', 6),
       ('Computer Repair', 'Computer repair person, looking for work', 'services', 1),
       ('Bed to good home', 'Giving away slightly-well used bed', 'giveaway', 4),
       ('Handy-Person ASAP', 'Received a free bed, and its broken', 'help wanted', 10),
       ('iPhone Workshop', 'Learn how to use an iPhone', 'tech', 8),
       ('Burger Chief 4 hire', 'Quadruple Bypass might be needed', 'services', 3),
       ('Dog Walker needed', 'Walker needed to walk a leonberger', 'help wanted', 5);

-- For a given ad, what is the email address of the user that created it?
select email
from users
where id in (
  select user_id
  from ads where user_id = 6
);

-- For a given ad, what category, or categories, does it belong to?
SELECT a.title, a.description, a.category
FROM ads AS a
  JOIN categories AS c
    ON a.category = c.category
WHERE a.id = 6 ;

-- For a given category, show all the ads that are in that category.
select A.title, A.description, A.category
from ads as A
  join categories as C on A.category = C.category
where C.id = 1;

-- For a given user, show all the ads they have posted.

select username, a.title, a.category
from users as u
join ads as a
on u.id = a.user_id
where a.user_id = 3;