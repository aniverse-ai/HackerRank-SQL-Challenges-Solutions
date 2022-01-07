-- -----------------------------------------------------------------------------------------------------------------------
/*
[1]  Population Census
Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

Input Format

The CITY and COUNTRY tables are described as follows:

*/
SELECT SUM(CITY.POPULATION)
FROM CITY 
JOIN COUNTRY
    ON CITY.CountryCode = COUNTRY.Code
WHERE CONTINENT = 'Asia';
