-- Read cars data--
select * from car_dekho;

-- Total car: to count of total records--
SELECT COUNT(*) from car_dekho;

-- The manager asked the employee, How many cars will be avarilable in 2023 ? --
SELECT COUNT(*) FROM car_dekho WHERE year = 2023;

-- The manager asked the employee How many year TOTAL car is available in 2020, 2021, 2022 ?

--  GROUP BY --
SELECT COUNT(*), year FROM car_dekho WHERE year IN (2020, 2021, 2022)
GROUP BY year;
-- Client asked me print the total of cars by years. I don't see all the details. --
SELECT year, COUNT(*) FROM car_dekho 
GROUP by year;

SELECT count(*) FROM car_dekho WHERE Name LIKE '%Maruti%' ;

-- Clint asked to car dealer agent How many deisel cars will there be in 2020 ? --
SELECT COUNT(*), fuel FROM car_dekho WHERE year = 2020 AND fuel = 'diesel'
GROUP BY fuel;

-- Clint asked to car dealer agent How many petrol cars will there be in 2020 ? --
SELECT COUNT(*), fuel FROM car_dekho WHERE year = 2020 AND fuel = 'petrol'
GROUP BY fuel;

-- The manager told the employee to give a print all the fuel cars(petrol, --
-- diesel, and CNG) come by all year. --
SELECT COUNT(*), year FROM car_dekho WHERE fuel ='petrol' GROUP BY year;
SELECT COUNT(*), year FROM car_dekho WHERE fuel ='diesel' GROUP BY year;

-- Manager said there were more than 100 cars in a given year, --
-- which year had more than 100 cars ?--
SELECT COUNT(*) as c, year FROM car_dekho
GROUP BY year having c>100;

SELECT COUNT(*) as c, year FROM car_dekho
GROUP BY year having c<100;

-- The manager said to the employee all car count details between 2015 and 2023;
-- we need a complete list. --
SELECT COUNT(*) as c FROM car_dekho WHERE year BETWEEN 2015 and 2023;

-- The manager said to the employee all car  details between 2015 and 2023;
-- we need a complete list. 
SELECT * FROM car_dekho WHERE year BETWEEN 2015 and 2023;
