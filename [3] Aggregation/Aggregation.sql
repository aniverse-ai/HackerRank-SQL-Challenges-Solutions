-- -----------------------------------------------------------------------------------------------------------------------
/*
[1] Revising Aggregations - The Count Function
	Submissions	Leaderboard	Discussions	Editorial
Query a count of the number of cities in CITY having a Population larger than .

Input Format

The CITY table is described as follows:

*/
SELECT COUNT(*) FROM city 
WHERE population > 100000;
-- -----------------------------------------------------------------------------------------------------------------------
/*
[2] Revising Aggregations - The Sum Function
Query the total population of all cities in CITY where District is California.

Input Format

The CITY table is described as follows:

*/
SELECT SUM(population) FROM city 
WHERE district = 'California';
-- -----------------------------------------------------------------------------------------------------------------------
/*
[3] Revising Aggregations - Averages
Query the average population of all cities in CITY where District is California.

Input Format

The CITY table is described as follows:
*/
SELECT AVG(population) FROM city 
WHERE district = 'California';
-- -----------------------------------------------------------------------------------------------------------------------
/*
[4*] Average Population
Query the average population for all cities in CITY, rounded down to the nearest integer.

Input Format

The CITY table is described as follows:
*/
SELECT ROUND(AVG(population)) FROM city;
-- -----------------------------------------------------------------------------------------------------------------------
/*
[5] Japan Population
Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.

Input Format

The CITY table is described as follows:
*/
SELECT SUM(population) FROM city 
WHERE countrycode = 'JPN';
-- -----------------------------------------------------------------------------------------------------------------------
/*
[6] Population Density Difference
Query the difference between the maximum and minimum populations in CITY.

Input Format

The CITY table is described as follows:
*/
SELECT MAX(population) - MIN(population) FROM city;
-- -----------------------------------------------------------------------------------------------------------------------
/*
[7**] The blunder
Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES table, but did not realize her keyboard's  key was broken until after completing the calculation. She wants your help finding the difference between her miscalculation (using salaries with any zeros removed), and the actual average salary.

Write a query calculating the amount of error (i.e.:  average monthly salaries), and round it up to the next integer.

Input Format

The EMPLOYEES table is described as follows: 

*/
SELECT CEIL( AVG(salary)- AVG(REPLACE(salary,'0','')) ) 
FROM employees;
-- -----------------------------------------------------------------------------------------------------------------------
/*
[] 

*/
-- -----------------------------------------------------------------------------------------------------------------------
/*
[] 

*/

-- -----------------------------------------------------------------------------------------------------------------------
/*
[] 

*/

-- -----------------------------------------------------------------------------------------------------------------------
/*
[] 

*/

-- -----------------------------------------------------------------------------------------------------------------------
/*
[] 

*/

-- -----------------------------------------------------------------------------------------------------------------------
/*
[] 

*/
-- -----------------------------------------------------------------------------------------------------------------------
/*
[] 

*/

-- -----------------------------------------------------------------------------------------------------------------------
/*
[] 

*/

