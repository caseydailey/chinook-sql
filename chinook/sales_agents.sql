--Provide a query showing only the Employees who are Sales Agents.
--This returns nothing:
select Employee.FirstName, Employee.LastName, Employee.EmployeeId, Employee.Title
from Employee
where Employee.Title = 'Sales Agent';


--but maybe this is what you're looking for:
select Employee.FirstName, Employee.LastName, Employee.EmployeeId, Employee.Title
from Employee
where Employee.Title = 'Sales Support Agent';