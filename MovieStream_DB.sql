create database MovieStream_DB;
use MovieStream_DB;
CREATE TABLE movies (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Movie_name VARCHAR(50) NOT NULL,
    Genre VARCHAR(50),
    Language VARCHAR(50),
    rating DECIMAL(2,1) CHECK(rating BETWEEN 0 AND 10),
    Duration_min INT,
    release_year INT);


ALTER TABLE movies AUTO_INCREMENT = 101;
describe movies;
INSERT INTO movies
(Movie_name, Genre, Language, Rating, Duration_min, Release_year)
VALUES
('Leo', 'Action', 'Tamil', 8.2, 164, 2023),
('Premalu', 'Romance', 'Malayalam', 8.5, 156, 2024),
('KGF', 'Action', 'Kannada', 8.4, 168, 2018),
('Drishyam', 'Thriller', 'Malayalam', 8.6, 160, 2013),
('Jawan', 'Action', 'Hindi', 7.4, 169, 2023),
('96', 'Romance', 'Tamil', 8.5, 158, 2018);

select * from movies;

select movie_name,rating from movies;

select distinct genre from movies;
select distinct language from movies;
select * from movies order by rating desc limit 3;
select * from movies order by rating desc limit 2;
select * from movies where rating > 8.0;
select * from movies where release_year > 2020;
select * from movies where genre = "action";
select * from movies order by rating desc;
select * from movies order by release_year ASC;
select max(rating) from movies;
select min(Duration_min) from movies;
select avg(rating) from movies;
select count(Movie_name) from movies group by genre;

SELECT Language, AVG(rating) FROM movies
GROUP BY Language;

SELECT Genre, COUNT(*) AS movie_count
FROM movies
GROUP BY Genre
HAVING COUNT(*) > 1;


SELECT Language, COUNT(*) AS movie_count
FROM movies
GROUP BY Language
HAVING COUNT(*) > 1;



