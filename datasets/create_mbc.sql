CREATE DATABASE mbc;

USE mbc;

CREATE TABLE Months
(
   month int NOT NULL PRIMARY KEY,
   quarter int NOT NULL
);

CREATE TABLE Movies
(
   id int NOT NULL PRIMARY KEY,
   release_date int NOT NULL,
   revenue bigint NOT NULL,
   title varchar(120),
   vote_average float NOT NULL,
   CONSTRAINT month FOREIGN KEY (release_date) REFERENCES Months(month)
);

CREATE VIEW top10Rev AS 
    SELECT * 
    FROM Movies 
    ORDER BY revenue 
    DESC LIMIT 10;

CREATE VIEW top10Vote AS 
    SELECT * 
    FROM Movies 
    ORDER BY vote_average 
    DESC LIMIT 10;

CREATE VIEW avgRevPerQ(quarter, average) AS
    SELECT quarter, AVG(revenue) AS avg_revenue
    FROM Movies,Months
    WHERE release_date = month
    GROUP BY quarter
    ORDER BY avg_revenue DESC;

CREATE VIEW avgVotePerQ(quarter, vote) AS
    SELECT quarter, AVG(vote_average) AS vote
    FROM Movies, Months
    WHERE release_date = month
    GROUP BY quarter
    ORDER BY vote DESC;

CREATE VIEW avgRevPerVote(vote_average, rev) AS
    SELECT vote_average, AVG(revenue) AS rev
    FROM Movies, Months
    WHERE release_date = month
    GROUP BY vote_average
    ORDER BY rev DESC;


