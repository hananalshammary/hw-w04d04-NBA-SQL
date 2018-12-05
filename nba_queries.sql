--------------------------------------------
-- Part 3 - Basic SQL Queries
-- write queries to select the following
--------------------------------------------

-- All columns for all players from the New York Knicks (NYK).

SELECT * from players where team like '%NYK%';

-- All columns for all players from the Indiana Packers (IND) who are under 26
-- years old.

SELECT * from players where team like '%IND%' AND age < 26;

-- All columns for all players, ordered from least points scored to most points
-- scored.

SELECT * from players order BY points;

-- Name and Points per game (points/games), for the players with the top 20 points
-- per game.


SELECT name,points from players order by points limit 20;
-- The average age for all players.

SELECT AVG(age) from players;

-- The average age for all players on the Oklahoma City Thunder (OKC).

SELECT AVG(age) from players where team like '%OKC%';

-- The average age for all players who played more than 40 games.
SELECT age FROM players WHERE games<40;



--------------------------------------------
-- BONUS - Advanced SQL Queries
-- write queries to select the following
--------------------------------------------

-- The team and total points scored from all players on that team (team points)
-- ordered from most team points to least.
SELECT DISTINCT team , SUM(points) AS TotalPoints  FROM players GROUP BY team ORDER BY TotalPoints DESC;


-- The age and the average points per game for that age, ordered from oldest to
-- youngest for all ages.

SELECT DISTINCT  age , AVG(points) FROM players GROUP BY age ORDER BY age DESC;

-- The team and the the number of players who score above 12 points per game on
-- that team, ordered from the most number of players to the least number of players.
SELECT DISTINCT team , COUNT(name) AS number_of_players FROM players WHERE points >12 GROUP BY team ORDER BY number_of_players DESC;
