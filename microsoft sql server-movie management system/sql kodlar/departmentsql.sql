DROP TABLE IF EXISTS movies.dbo.department;

CREATE TABLE movies.dbo.department (
  department_id tinyint NOT NULL PRIMARY KEY,
  department_name varchar(20) DEFAULT NULL,
  
);


INSERT INTO movies.dbo.department (department_id, department_name) VALUES
(1,'Camera'),
(2,'Directing'),
(3,'Production'),
(4,'Writing'),
(5,'Editing'),
(6,'Sound'),
(7,'Art'),
(8,'Costume & Make-Up'),
(9,'Crew'),
(10,'Visual Effects'),
(11,'Lighting'),
(12,'Actors');
