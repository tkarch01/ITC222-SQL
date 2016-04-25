-- ITC222
-- Thomas Karchesy
-- Assignment 2 Selects One
-- April 8, 2016

use MetroAlt

--help--  1 List the years in which employees were hired, sort by year and then last name
Select 
   Year(EmployeeHireDate) [Year], 
   EmployeeLastName Employee
  From Employee 
  group by EmployeeHireDate, EmployeeLastName 

--  2 What is the difference in Months between the first employee hired and the last one
Select 
  Distinct 
   DATEDIFF(MONTH, min(EmployeeHireDate), max(EmployeeHireDate)) 
  from Employee

--help--  3 Output the employee phone number so it looks like (206)555-1234
Select EmployeePhone
  From Employee

--help--  4 Output the employee hourly wage so it looks like $45.00 (EmployeePosition)
Select EmployeeHourlyPayRate
  From EmployeePosition

--  5 List only the employees who were hired between 2013 and 2015
Select EmployeeLastName, EmployeeHireDate 
  From Employee
  Where Year(EmployeeHireDate) >= '2013' AND Year(EmployeeHireDate) <= '2015'


--  6 Output the position, the hourly wage and the hourly wage multiplied by 40 
--    to see what a weekly wage might look like
Select Distinct 
    PositionKey, 
	EmployeeHourlyPayRate [Hourly Rate], 
	EmployeeHourlyPayRate * 40 [Weekly Pay Rate]
  From EmployeePosition

--help--  7 What is the highest hourly pay rate (EmployeePosition) --help: how to put the position name in.
Select 
   Max(EmployeeHourlyPayRate) [Highest Hourly Pay Rate]
  From EmployeePosition

--  8 What is the lowest hourly pay rate
Select 
   Min(EmployeeHourlyPayRate) [Lowest Hourly Pay Rate]
  From EmployeePosition

--  9 What is the average hourly pay rate
Select 
   Avg(EmployeeHourlyPayRate) [Average Hourly Pay Rate]
  From EmployeePosition

-- 10 What is the average pay rate by position


-- 11 Provide a count of how many employees were hired each year 
--    and each month of the year


-- 12 Do the query 11 again but with a case structure to output 
--    the months as words


-- 13 Return which positions average more than $50 an hour


-- 14 List the total number of riders on Metroalt busses (RiderShip)
Select Sum(Riders) [Total Riders]
  From Ridership

-- 15 List all the tables in the metroAlt databases (system views)


-- 16 List all the databases on server

