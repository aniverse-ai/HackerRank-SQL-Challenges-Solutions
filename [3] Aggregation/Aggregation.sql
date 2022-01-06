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
[8] Weather Observation Station 2
Query the following two values from the STATION table:

The sum of all values in LAT_N rounded to a scale of  decimal places.
The sum of all values in LONG_W rounded to a scale of  decimal places.
*/
SELECT ROUND(SUM(lat_n),2), ROUND(SUM(long_w),2) FROM station;
-- -----------------------------------------------------------------------------------------------------------------------
/*
[9] Weather Observation Station 13
Query the sum of Northern Latitudes (LAT_N) from STATION having values greater than  and less than . Truncate your answer
 to  decimal places.
*/
SELECT ROUND(SUM(lat_n),4) FROM station
WHERE lat_n > 38.7800 AND lat_n < 137.2345;
-- -----------------------------------------------------------------------------------------------------------------------
/*
[10] Weather Observation Station 14
Query the greatest value of the Northern Latitudes (LAT_N) from STATION that is less than . Truncate your answer to  decimal places.

Input Format

The STATION table is described as follows:
*/
SELECT ROUND(MAX(lat_n),4) FROM station
WHERE lat_n < 137.2345;
-- -----------------------------------------------------------------------------------------------------------------------
/*
[11***] Weather Observation Station 15
Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than . Round your
 answer to  decimal places.
*/
SELECT ROUND((long_w),4) FROM station
WHERE lat_n = (
SELECT MAX(lat_n) FROM station
WHERE lat_n < 137.2345);

SELECT ROUND(LONG_W, 4)
FROM STATION
WHERE LAT_N < 137.2345
ORDER BY LAT_N DESC
LIMIT 1;
-- -----------------------------------------------------------------------------------------------------------------------
/*
[12] Weather Observation Station 16 
Query the smallest Northern Latitude (LAT_N) from STATION that is greater than . Round your answer to  decimal places.
*/
SELECT ROUND(MIN(lat_n),4) FROM station 
WHERE lat_n > 38.7780;
-- -----------------------------------------------------------------------------------------------------------------------
/*
[13] Weather Observation Station 16  
Query the Western Longitude (LONG_W)where the smallest Northern Latitude (LAT_N) in STATION is greater than . Round your 
answer to  decimal places.
*/
SELECT ROUND(long_w,4) FROM station
WHERE lat_n > 38.7780 
ORDER BY lat_n LIMIT 1;
-- -----------------------------------------------------------------------------------------------------------------------
/*
[14] Weather Observation Station 18
Consider  and  to be two points on a 2D plane.

 happens to equal the minimum value in Northern Latitude (LAT_N in STATION).
 happens to equal the minimum value in Western Longitude (LONG_W in STATION).
 happens to equal the maximum value in Northern Latitude (LAT_N in STATION).
 happens to equal the maximum value in Western Longitude (LONG_W in STATION).
Query the Manhattan Distance between points  and  and round it to a scale of  decimal places.
*/
SELECT ROUND( (MAX(LAT_N) - MIN(LAT_N)) + (MAX(LONG_W) - MIN(LONG_W)), 4)
FROM STATION;
-- -----------------------------------------------------------------------------------------------------------------------
/*
[15] Weather Observation Station 19
Consider  and  to be two points on a 2D plane where  are the respective minimum and maximum values of Northern Latitude (LAT_N) and  are the respective minimum and maximum values of Western Longitude (LONG_W) in STATION.

Query the Euclidean Distance between points  and  and format your answer to display  decimal digits.

Input Format

The STATION table is described as follows:
*/
SELECT ROUND( SQRT( POWER(MAX(LAT_N)-MIN(LAT_N),2) + POWER(MAX(LONG_W)-MIN(LONG_W),2) ),4)
FROM STATION;
-- -----------------------------------------------------------------------------------------------------------------------
/*

*/

-- -----------------------------------------------------------------------------------------------------------------------




