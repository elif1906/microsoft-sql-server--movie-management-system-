DROP TABLE IF EXISTS movies.dbo.genre;

CREATE TABLE movies.dbo.genre (
  genre_id smallint NOT NULL PRIMARY KEY,
  genre_name varchar(50) DEFAULT NULL,
  );

  /* tinyint yerine smallint deðiþtirilmiþtir.sebebi 256 e kadar olmuþtur.ama id lerin  */
INSERT INTO movies.dbo.genre (genre_id, genre_name) VALUES
(12,'Adventure'),
(14,'Fantasy'),
(16,'Animation'),
(18,'Drama'),
(27,'Horror'),
(28,'Action'),
(35,'Comedy'),
(36,'History'),
(37,'Western'),
(53,'Thriller'),
(80,'Crime'),
(99,'Documentary'),
(878,'Science Fiction'),
(9648,'Mystery'),
(10402,'Music'),
(10749,'Romance'),
(10751,'Family'),
(10752,'War'),
(10769,'Foreign'),
(10770,'TV Movie');
