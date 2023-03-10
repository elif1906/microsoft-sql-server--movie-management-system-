DROP TABLE IF EXISTS movies.dbo.movie_company;

CREATE TABLE movies.dbo.movie_company (
  movie_id tinyint DEFAULT NULL,
  company_id tinyint DEFAULT NULL,
  CONSTRAINT fk_mc_comp FOREIGN KEY (company_id) REFERENCES movies.dbo.production_company (company_id),
  CONSTRAINT fk_mc_movie FOREIGN KEY (movie_id) REFERENCES movies.dbo.movie (movie_id)
);

INSERT INTO movies.dbo.movie_company (movie_id, company_id) VALUES
(31,6),
(38,5),
(90,10),
(21,18),
(5,12),
(50,10),
(53,10),
(73,6),
(100,11),
(90,17),
(74,1),
(7,14),
(91,16),
(91,6),
(75,2),
(30,8),
(71,16),
(18,19),
(11,8),
(3,5),
(50,19),
(88,6),
(38,7),
(20,1),
(28,6),
(19,13),
(84,18),
(50,5),
(18,9),
(38,6),
(2,14),
(39,9),
(3,8),
(67,7),
(52,7),
(81,17),
(24,15),
(23,8),
(79,3),
(44,3),
(38,17),
(27,14),
(24,2),
(24,14),
(74,11),
(91,18),
(86,11),
(27,16),
(47,11),
(91,11),
(25,13),
(32,3),
(44,10),
(16,6),
(97,8),
(44,14),
(4,6),
(58,10),
(60,12),
(83,18),
(21,5),
(92,3),
(3,6),
(95,15),
(63,7),
(25,20),
(83,14),
(38,15),
(56,17),
(27,9),
(90,12),
(28,14),
(15,9),
(84,14),
(11,4),
(4,13),
(67,2),
(70,1),
(70,19),
(77,11),
(66,7),
(66,14),
(55,16),
(51,10),
(12,7),
(34,16),
(43,5),
(59,1),
(18,7),
(38,14),
(26,17),
(98,6),
(34,18),
(33,13),
(21,16),
(41,14),
(97,12),
(86,16),
(12,19),
(60,17),
(27,5),
(7,14);
