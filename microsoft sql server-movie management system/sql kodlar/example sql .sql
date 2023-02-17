
--1 example (This query shows the movie title,budget and other attributes of the movie sorted by the movies with the highest revenue)
SELECT
title,
budget,
release_date,
revenue,
runtime,
vote_average
FROM movies.dbo.movie
ORDER BY revenue DESC;



--2 example( This query shows to find who is at the title of that movie)
SELECT person_name
FROM movies.dbo.person
JOIN movies.dbo.movie_cast ON movies.dbo.person.person_id=movies.dbo.movie_cast.person_id
JOIN movies.dbo.movie ON movies.dbo.movie_cast.movie_id=movies.dbo.movie.movie_id
AND movies.dbo.movie.title='Spider-Man 3';




--3 example(This query shows how many languages are used in the total movies as a total number)
SELECT COUNT(*) AS language_count
FROM movies.dbo.language
JOIN movies.dbo.movie_languages ON movies.dbo.language.language_id=movies.dbo.movie_languages.language_id
JOIN movies.dbo.movie ON movies.dbo.movie_languages.movie_id=movies.dbo.movie.movie_id


--4 example(This quary shows which movie the link has)
SELECT title AS 'MOVIE NAME',homepage AS 'link'
FROM movies.dbo.movie WHERE 
EXISTS
(SELECT homepage
FROM movies.dbo.movie)


--5 example(this query shows calculating and ranjing the profit amount of films)

SELECT movie_id ,((revenue-budget)) AS profit
FROM movies.dbo.movie
ORDER BY profit DESC;



--6 example(This query shows the ten best movies top 10)


SELECT TOP 10 movie_id,MAX(popularity) AS 'The best'
FROM movies.dbo.movie
GROUP BY movie_id
ORDER BY MAX(popularity) DESC;




-- 7 example(sorted in order of most views.)
SELECT
title,
release_date,
popularity,
runtime
FROM movies.dbo.movie
ORDER BY popularity DESC;




--8 example(language table shows which language is used in movies)
SELECT title,language_name,language_role_id
FROM movies.dbo.language
JOIN movies.dbo.movie_languages 
ON movies.dbo.language.language_id=movies.dbo.movie_languages.language_id
JOIN movies.dbo.movie ON movies.dbo.movie_languages.movie_id=movies.dbo.movie.movie_id



--9 example (Shows the relationship between flim and the flim language table.)
SELECT 
title,language_id,language_role_id
FROM movies.dbo.movie_languages
JOIN movies.dbo.movie
ON movies.dbo.movie_languages.movie_id=movies.dbo.movie.movie_id
ORDER BY language_role_id ASC;



--10 example(which version(subtitle,spoken) is preferred while watching a movie and the amount
SELECT language_role_id ,COUNT(*) AS count 
FROM movies.dbo.movie_languages
JOIN movies.dbo.movie ON movies.dbo.movie_languages.movie_id=movies.dbo.movie.movie_id
GROUP BY language_role_id;




--11 example(total budget of movies)
SELECT title,SUM(budget) AS budget_of_movie
FROM movies.dbo.movie 
GROUP BY title;








--12 example(department table display)
SELECT LEFT(department_id,2) AS department_no,department_name AS department_name
FROM movies.dbo.department
ORDER BY LEFT(department_id,2) ASC;




--13 example (relationship between department table and movie crew)
SELECT department_id ,job AS 'job of crew'
FROM movies.dbo.movie_crew;






--14 example(find common occupation between department and crew)
SELECT job as JOB ,department_name AS DEPARTMENT
FROM movies.dbo.movie_crew
INNER JOIN movies.dbo.department ON movies.dbo.movie_crew.job=movies.dbo.department.department_name;







--15 example(runtime sort from 1000 to 1100 vote_count )
SELECT runtime,vote_count
FROM movies.dbo.movie
WHERE vote_count >ALL
(SELECT runtime FROM movies.dbo.movie WHERE vote_count LIKE '10%') AND  vote_count LIKE '11%';


--16 example(Sort by attribute 't%s' in name of movie)
SELECT title AS 'SAME'
FROM movies.dbo.movie
WHERE title LIKE 't%s';



--17 example(searching a table with rows from both)


SELECT character_name AS 'movie name' FROM movies.dbo.movie_cast
INTERSECT
SELECT person_name  FROM movies.dbo.person




--18 example(table of results of two or more queries in a single query)
SELECT company_name AS 'company name' FROM movies.dbo.production_company
UNION
SELECT title  FROM movies.dbo.movie





--19 example(Sorting movies by popularity by release date)
SELECT title,release_date
FROM movies.dbo.movie
ORDER BY popularity DESC;


--20 example(Query how many departments there are)
SELECT department_name ,COUNT(*) AS 'COUNT'
FROM movies.dbo.department
GROUP BY department_name;



--21 example(Combine rows from movie,cast,gender)
SELECT title,count(gender)
FROM movies.dbo.movie
JOIN movies.dbo.movie_cast
ON movies.dbo.movie.movie_id=movies.dbo.movie_cast.movie_id
JOIN movies.dbo.gender
ON movies.dbo.movie_cast.gender_id=movies.dbo.gender.gender_id
GROUP BY title
ORDER BY count(gender) DESC;

--22 example(Calculate the average film length and display the amount of film in the species)
SELECT title ,AVG(runtime)AS 'average runtime',COUNT(title) AS 'count'
FROM movies.dbo.movie
JOIN movies.dbo.movie_genres
ON movies.dbo.movie.movie_id=movies.dbo.movie_genres.movie_id
JOIN movies.dbo.genre
ON movies.dbo.movie_genres.genre_id=movies.dbo.genre.genre_id
GROUP BY title;

--23 example (find the shortest movie)
SELECT title,release_date,runtime
FROM movies.dbo.movie
WHERE runtime=(SELECT MIN(runtime) FROM movies.dbo.movie);

--24 example (Combine rows from movie,cast,gender,person)
SELECT title,popularity
FROM movies.dbo.movie
JOIN movies.dbo.movie_cast
ON movies.dbo.movie.movie_id=movies.dbo.movie_cast.movie_id
JOIN movies.dbo.gender
ON movies.dbo.movie_cast.gender_id=movies.dbo.gender.gender_id
JOIN movies.dbo.person
ON movies.dbo.movie_cast.person_id=movies.dbo.person.person_id


--25 example(top three movies)
SELECT TOP 3 title,MAX(revenue) AS 'earning'
FROM movies.dbo.movie
GROUP BY title
ORDER BY MAX(revenue) DESC;

--26 example (Top 3 actor)
SELECT TOP 3 person_name,MAX(character_name) AS 'role character'
FROM movies.dbo.movie_cast
JOIN movies.dbo.person
ON movies.dbo.movie_cast.person_id=movies.dbo.person.person_id
GROUP BY person_name
ORDER BY MAX(character_name) DESC;

--27 example(top 3 company names)
SELECT TOP 3 title,MAX(company_name) AS 'the best'
FROM movies.dbo.movie_company
JOIN movies.dbo.production_company
ON movies.dbo.movie_company.company_id=movies.dbo.production_company.company_id
JOIN movies.dbo.movie
ON movies.dbo.movie_company.company_id=movies.dbo.movie.movie_id
GROUP BY title
ORDER BY MAX(company_name) desc



--28 example(worst movies)
SELECT TOP 3 title,MIN(popularity) AS 'the bad'
FROM movies.dbo.movie
GROUP BY title
ORDER BY MIN(popularity) asc

--29 example (What country are the movies from?)
SELECT title,country_name
FROM movies.dbo.production_country
JOIN movies.dbo.country
ON movies.dbo.production_country.country_id=movies.dbo.country.country_id
JOIN movies.dbo.movie
ON movies.dbo.production_country.movie_id=movies.dbo.movie.movie_id


--30 example(Finding keywords of movies)
SELECT title,keyword_name
FROM movies.dbo.movie_keywords
JOIN movies.dbo.keyword
ON movies.dbo.movie_keywords.keyword_id=movies.dbo.keyword.keyword_id
JOIN movies.dbo.movie
ON movies.dbo.movie_keywords.movie_id=movies.dbo.movie.movie_id