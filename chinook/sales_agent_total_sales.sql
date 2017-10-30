--Provide a query that shows total sales made by each sales agent.

select Employee.FirstName 'sales agent first name',   Employee.LastName 'sales agent last name', sum(Invoice.Total) 'total sales'
from Employee, Customer, Invoice
where Employee.EmployeeId = Customer.SupportRepId
and Customer.CustomerId = Invoice.CustomerId
group by Employee.EmployeeId;
