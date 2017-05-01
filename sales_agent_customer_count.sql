--Provide a query that shows the count of customers assigned to each sales agent:

select count(Customer.CustomerId) as 'number of customers assigned', 
Employee.FirstName 'agent first name', 
Employee.LastName 'agent last name' 
from Employee, Customer
where Employee.Title = 'Sales Support Agent'
and Employee.EmployeeId = Customer.SupportRepId
group by Employee.EmployeeId;
