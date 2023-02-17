DROP TABLE IF EXISTS movies.dbo.gender;

CREATE TABLE movies.dbo.gender (
  gender_id tinyint NOT NULL PRIMARY KEY,
  gender VARCHAR(20) DEFAULT NULL,
  );

INSERT INTO movies.dbo.gender (gender_id, gender) VALUES
(0,'Unspecified'),
(1,'Female'),
(2,'Male');


