CREATE DATABASE mbc;

USE mbc;

CREATE TABLE Movies
(
   id int NOT NULL PRIMARY KEY,
   release_date varchar(3) NOT NULL,
   revenue bigint NOT NULL,
   title varchar(120),
   vote_average float NOT NULL
);

CREATE TABLE Months
(
   month int NOT NULL PRIMARY KEY,
   quarter int NOT NULL
);
