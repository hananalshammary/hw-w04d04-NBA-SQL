----------------------------------
-- Part 1

-- Drop DB if exists
DROP DATABASE IF EXISTS nba_db;
DROP DATABASE nba_db; // I do not have 
-- Create DB nba_db
CREATE DATABASE nba_db;

CREATE DATABASE NBA_BD;

-- Connect to nba_db
\connect nba_bd
\c nba_db;

-- Create table here
CREATE TABLE players (id SERIAL , name text , age int , team text , games  int , points int);

-- Insert player here


----------------------------------
-- Part 2
-- Uncomment COPY players statement and modify it with YOUR file path!


copy players(name, age, team, games, points) from '/Users/hnanalshmry/code/wdi/homework/hw-w04d04-NBA-SQL/nba_season_2011-2012.csv' DELIMITER ',' CSV;
