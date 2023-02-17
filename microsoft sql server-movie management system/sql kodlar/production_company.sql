DROP TABLE IF EXISTS movies.dbo.production_company;
CREATE TABLE movies.dbo.production_company (
  company_id tinyint NOT NULL   PRIMARY KEY,
  company_name varchar(50) DEFAULT NULL,
  );

INSERT INTO movies.dbo.production_company (company_id, company_name) VALUES
(1,'Lucasfilm'),
(2,'Walt Disney Pictures'),
(3,'Pixar Animation Studios'),
(4,'Paramount Pictures'),
(5,'Columbia Pictures'),
(6,'RKO Radio Pictures'),
(7,'DreamWorks'),
(8,'Fine Line Features'),
(9,'Gaumont'),
(10, 'WingNut Films'),
(11, 'New Line Cinema'),
(12, 'Universal Studios'),
(13, 'Miramax Films'),
(14, 'Gracie Films'),
(15, 'Imagine Entertainment'),
(16, 'Mikona Productions GmbH & Co. KG'),
(17, 'DreamWorks SKG'),
(18, 'Newmarket Films'),
(19, 'Eddie Murphy Productions'),
(20, 'Universal Pictures');
