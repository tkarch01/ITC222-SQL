-- ITC222
-- Thomas Karchesy
-- Assignment 2 Selects One
-- April 8, 2016

use MetroAlt

-- Use the table Employee

-- 1 Return all the employees
Select * From Employee;

-- 2 Return only the last name, first name and emails for all employees
Select EmployeeLastName, EmployeeFirstName, EmployeeEmail From Employee;

-- 3 Return all the employees sorted by Last name alphabetically
Select * from Employee 
Order by EmployeeLastName ASC

-- 4 Sort the employees by hire date most recent first
Select * From Employee
Order by EmployeeHireDate Desc

-- 5 List all the employees who live in Seattle
Select * From Employee
where EmployeeCity = 'Seattle'

-- 6 List all the employees who do not live in Seattle
Select * From Employee
Where EmployeeCity <> 'Seattle'

-- 7 List the employees who do not have listed phones
Select * From Employee
Where EmployeePhone is null

-- 8 List only the employees who have phones
Select * From Employee
Where EmployeePhone is not null

-- 9 List all the employees whose last name starts with “c.”
Select * From Employee
Where EmployeeLastName like 'C%'

-- Use the table EmployeePosition

-- 10 List all the employee keys and their wages sorted by pay from highest to lowest
Select EmployeeKey, EmployeeHourlyPayRate from EmployeePosition
Order by EmployeeHourlyPayRate DESC

-- 11 List all the employee keys and their hourly wage for those with PositionKey equal to 2 (mechanics)
Select EmployeeKey, EmployeeHourlyPayRate from EmployeePosition
Where PositionKey = 2

-- 12 Return the top 10 of the query for question 11
Select top 10 EmployeeKey, EmployeeHourlyPayRate from EmployeePosition
Where PositionKey = 2

-- 13 Using the same query offset by 20 and list 10
Select EmployeeKey, EmployeeHourlyPayRate from EmployeePosition
Where PositionKey = 2
order by EmployeeKey
Offset 20 rows Fetch next 10 rows only

-- Use the table BusScheduleAssignment

-- 14 Return the BusDriverShiftKey and the BusRouteKey but remove all duplicates
Select DISTINCT BusDriverShiftKey, BusRouteKey from BusScheduleAssignment

 