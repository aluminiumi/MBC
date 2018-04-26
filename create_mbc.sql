﻿CREATE DATABASE mbc;

USE mbc;

CREATE TABLE Inventory
(
   id int NOT NULL PRIMARY KEY,
   release_date varchar(10) NOT NULL,
   revenue int NOT NULL,
   title varchar(120),
   vote_average float NOT NULL
);

