DROP TABLE IF EXISTS movies.dbo.language_role;

CREATE TABLE movies.dbo.language_role (
  role_id tinyint NOT NULL PRIMARY KEY,
  language_role_id varchar(20) DEFAULT NULL,
  
);

INSERT INTO movies.dbo.language_role (role_id, language_role_id) VALUES
(1,'Original'),
(2,'Spoken');
