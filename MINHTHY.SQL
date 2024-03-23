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

--- Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.
select distinct city from station
where city not like 'a%' and city not like 'e%' and city not like 'o%' and city not like 'u%' and city not like 'i%'

---Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.
select name from employee
Order by name ASC

--- Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than 2000 per month who have been employees for less than 10 months. Sort your result by ascending employee_id.
select name from employee
where salary > 2000 and months < 10
order by employee_id asc

--- Write a solution to find the ids of products that are both low fat and recyclable. Return the result table in any order.
select product_id from products
where low_fats like "y" and recyclable like 'y' 
order by product_id asc

--- Find the names of the customer that are not referred by the customer with id = 2.
Return the result table in any order.
select name from customer
where referee_id <> 2 or referee_id is null

--- A country is big if:
it has an area of at least three million (i.e., 3000000 km2), or
it has a population of at least twenty-five million (i.e., 25000000).
Write a solution to find the name, population, and area of the big countries.
Return the result table in any order.

select name, population, area from world
where area >=3000000 or population >= 25000000
order by name asc

--- Write a solution to find all the authors that viewed at least one of their own articles.
Return the result table sorted by id in ascending order.
The result format is in the following example.

select distinct author_id as 'id' from views
where author_id = viewer_id
order by author_id asc

---Tesla is investigating production bottlenecks and they need your help to extract the relevant data. Write a query to determine which parts have begun the assembly process but are not yet finished.
SELECT part, assembly_step FROM parts_assembly
where finish_date is null

---Find all Lyft drivers who earn either equal to or less than 30k USD or equal to or more than 70k USD.
Output all details related to retrieved records.
select * from lyft_drivers
where yearly_salary <= 30000 or yearly_salary >= 70000

--- Find the advertising channel where Uber spent more than 100k USD in 2019.
select * from uber_advertising
where year = 2019 and money_spent > 100000



















