DROP TABLE IF EXISTS movies.dbo.country;

CREATE TABLE movies.dbo.country (
  country_id tinyint NOT NULL   PRIMARY KEY ,
  country_iso_code varchar(10) DEFAULT NULL,
  country_name varchar(50) DEFAULT NULL,
);

INSERT INTO movies.dbo.country (country_id, country_iso_code, country_name) VALUES
(1,'AE','United Arab Emirates'),
(2,'AF','Afghanistan'),
(3,'AO','Angola'),
(4,'AR','Argentina'),
(5,'AT','Austria'),
(6,'AU','Australia'),
(7,'AW','Aruba'),
(8,'BA','Bosnia and Herzegovina'),
(9,'BE','Belgium'),
(10,'BG','Bulgaria'),
(11,'BO','Bolivia'),
(12,'BR','Brazil'),
(13,'BS','Bahamas'),
(14,'BT','Bhutan'),
(15,'CA','Canada'),
(16,'CH','Switzerland'),
(17,'CL','Chile'),
(18,'CM','Cameroon'),
(19,'CN','China'),
(20,'CO','Colombia'),
(21,'CS','Serbia and Montenegro'),
(22,'CY','Cyprus'),
(23,'CZ','Czech Republic'),
(24,'DE','Germany'),
(25,'DK','Denmark'),
(26,'DM','Dominica'),
(27,'DO','Dominican Republic'),
(28,'DZ','Algeria'),
(29,'EC','Ecuador'),
(30,'EG','Egypt'),
(31,'ES','Spain'),
(32,'FI','Finland'),
(33,'FJ','Fiji'),
(34,'FR','France'),
(35,'GB','United Kingdom'),
(36,'GP','Guadaloupe'),
(37,'GR','Greece'),
(38,'GY','Guyana'),
(39,'HK','Hong Kong'),
(40,'HU','Hungary'),
(41,'ID','Indonesia'),
(42,'IE','Ireland'),
(43,'IL','Israel'),
(44,'IN','India'),
(45,'IR','Iran'),
(46,'IS','Iceland'),
(47,'IT','Italy'),
(48,'JM','Jamaica'),
(49,'JO','Jordan'),
(50,'JP','Japan'),
(51,'KE','Kenya'),
(52,'KG','Kyrgyz Republic'),
(53,'KH','Cambodia'),
(54,'KR','South Korea'),
(55,'KZ','Kazakhstan'),
(56,'LB','Lebanon'),
(57,'LT','Lithuania'),
(58,'LU','Luxembourg'),
(59,'LY','Libyan Arab Jamahiriya'),
(60,'MA','Morocco'),
(61,'MC','Monaco'),
(62,'MT','Malta'),
(63,'MX','Mexico'),
(64,'MY','Malaysia'),
(65,'NG','Nigeria'),
(66,'NL','Netherlands'),
(67,'NO','Norway'),
(68,'NZ','New Zealand'),
(69,'PA','Panama'),
(70,'PE','Peru'),
(71,'PH','Philippines'),
(72,'PK','Pakistan'),
(73,'PL','Poland'),
(74,'PT','Portugal'),
(75,'RO','Romania'),
(76,'RS','Serbia'),
(77,'RU','Russia'),
(78,'SE','Sweden'),
(79,'SG','Singapore'),
(80,'SI','Slovenia'),
(81,'SK','Slovakia'),
(82,'TH','Thailand'),
(83,'TN','Tunisia'),
(84,'TR','Turkey'),
(85,'TW','Taiwan'),
(86,'UA','Ukraine'),
(87,'US','United States of America'),
(88,'ZA','South Africa');
