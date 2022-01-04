-- -----------------------------------------------------------------------------------------------------------------------
/*
[1] Revising the Select Query I

Query all columns for all American cities in the CITY table with populations larger than 100000.
The CountryCode for America is USA.
The CITY table is described as follows:

*/

SELECT * FROM CITY 
WHERE population > 100000 AND countrycode = 'USA';
-- -----------------------------------------------------------------------------------------------------------------------
/*
[2] Revising the Select Query II

Query the NAME field for all American cities in the CITY table with populations larger than 120000.
The CountryCode for America is USA.
The CITY table is described as follows:

*/

SELECT name FROM CITY 
WHERE population > 120000 AND countrycode = 'USA';
-- -----------------------------------------------------------------------------------------------------------------------
/*
[3] Select All

Query all columns (attributes) for every row in the CITY table.
The CITY table is described as follows:
*/

SELECT * FROM city;
-- -----------------------------------------------------------------------------------------------------------------------
/*
[4] Select by ID

Query all columns for a city in CITY with the ID 1661.
The CITY table is described as follows:
*/

SELECT * FROM city 
WHERE ID = 1661;
-- -----------------------------------------------------------------------------------------------------------------------
/*
[5] Japanese Cities' Names

Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.
The CITY table is described as follows:

*/

SELECT name FROM city 
WHERE countrycode = 'JPN';
-- -----------------------------------------------------------------------------------------------------------------------
/*
[6] Japanese Cities' Attributes

Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.
The CITY table is described as follows:

*/

SELECT * FROM city 
WHERE countrycode = 'JPN';
-- -----------------------------------------------------------------------------------------------------------------------
/*
[7] Weather Observation Station 1

Query a list of CITY and STATE from the STATION table.
The STATION table is described as follows:

*/

SELECT city,state FROM station;
-- -----------------------------------------------------------------------------------------------------------------------
/*
[8] Weather Observation Station 3

Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer.
The STATION table is described as follows:
*/
SELECT DISTINCT(city) FROM station
WHERE ID % 2 = 0;
-- -----------------------------------------------------------------------------------------------------------------------
/*
[9] Weather Observation Station 4

Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the
table. The STATION table is described as follows:
*/
SELECT COUNT(city) - COUNT(DISTINCT(city))
FROM station;
-- -----------------------------------------------------------------------------------------------------------------------
/*
[10*]  Weather Observation Station 5

Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths 
(i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one 
that comes first when ordered alphabetically.
The STATION table is described as follows:

Sample Input

For example, CITY has four entries: DEF, ABC, PQRS and WXY.

Sample Output

ABC 3
PQRS 4
Explanation

When ordered alphabetically, the CITY names are listed as ABC, DEF, PQRS, and WXY, with lengths  and . The longest name is PQRS, but there are  options for shortest named city. Choose ABC, because it comes first alphabetically.

Note
You can write two separate queries to get the desired output. It need not be a single query.

*/

SELECT CITY, LENGTH(CITY) FROM STATION 
ORDER BY LENGTH(CITY) DESC, CITY ASC LIMIT 1;

SELECT CITY, LENGTH(CITY) FROM STATION 
ORDER BY LENGTH(CITY) ASC, CITY ASC LIMIT 1;
-- -----------------------------------------------------------------------------------------------------------------------
/*
[11**] Weather Observation Station 6

Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.

Input Format

The STATION table is described as follows:
*/
SELECT DISTINCT(city) FROM station 
WHERE LOWER(SUBSTR(city,1,1)) IN ('a','e','i','o','u');

--OR

SELECT DISTINCT(city) FROM station 
WHERE (SUBSTR(city,1,1)) IN ('A','E','I','O','U');
-- -----------------------------------------------------------------------------------------------------------------------
/*
[12**] Weather Observation Station 7

Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.

Input Format

The STATION table is described as follows:

*/
SELECT DISTINCT(city) FROM station 
WHERE LOWER(SUBSTR(city,-1,1)) IN ('a','e','i','o','u');
-- -----------------------------------------------------------------------------------------------------------------------
/*
[13*] Weather Observation Station 8

Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. 
Your result cannot contain duplicates.

*/
SELECT DISTINCT(city) FROM station 
WHERE LOWER(SUBSTR(city,-1,1)) IN ('a','e','i','o','u')
AND LOWER(SUBSTR(city,1,1)) IN ('a','e','i','o','u');

SELECT DISTINCT city FROM station 
WHERE LEFT(city,1) IN ('a','e','i','o','u') 
AND RIGHT(city, 1) IN ('a','e','i','o','u');
-- -----------------------------------------------------------------------------------------------------------------------
/*
[14] Weather Observation Station 9

Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.

Input Format

The STATION table is described as follows:

*/
SELECT DISTINCT(city) FROM station 
WHERE (SUBSTR(city,1,1)) NOT IN ('A','E','I','O','U');
-- -----------------------------------------------------------------------------------------------------------------------
/*
[15] Weather Observation Station 10

Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.

Input Format

The STATION table is described as follows:

*/
SELECT DISTINCT(city) FROM station 
WHERE LOWER(SUBSTR(city,-1,1)) NOT IN ('a','e','i','o','u');
-- -----------------------------------------------------------------------------------------------------------------------
/*
[16] Weather Observation Station 11
Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels.
 Your result cannot contain duplicates.

Input Format

The STATION table is described as follows:

*/
SELECT DISTINCT(city) FROM station 
WHERE LOWER(SUBSTR(city,-1,1)) NOT IN ('a','e','i','o','u')
OR LOWER(SUBSTR(city,1,1)) NOT IN ('a','e','i','o','u');
-- -----------------------------------------------------------------------------------------------------------------------
/*
[17] Weather Observation Station 12
Query the list of CITY names from STATION that do not start with vowels and do not end with vowels.
 Your result cannot contain duplicates.

Input Format

The STATION table is described as follows:


*/
SELECT DISTINCT(city) FROM station 
WHERE LOWER(SUBSTR(city,-1,1)) NOT IN ('a','e','i','o','u')
AND LOWER(SUBSTR(city,1,1)) NOT IN ('a','e','i','o','u');
-- -----------------------------------------------------------------------------------------------------------------------
