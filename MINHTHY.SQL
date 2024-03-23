--- */Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA.*/
SELECT name from city
where population > 120000
and countrycode = 'USA'

--- */Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.*/
SELECT * FROM CITY
WHERE COUNTRYCODE = 'JPN'

--- Query a list of CITY and STATE from the STATION table.*/
select CITY,STATE from STATION

--- Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.*/
SELECT DISTINCT city FROM STATION
WHERE CITY LIKE 'a%' or city like 'e%' or city like 'i%' or city like 'o%' or city like 'u%'

--- Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.
select distinct city from station
where city like '%a' or city like '%e' or city like '%i' or city like '%o' or city like '%u'
