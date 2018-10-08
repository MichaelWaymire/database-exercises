CREATE DATABASE addlister_db;



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
    discription varchar(500),
    category varchar(100) NOT NUll,
    user_id INT UNSIGNED NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY(user_id) REFERENCES  users (id)
);