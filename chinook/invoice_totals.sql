/*Provide a query that shows the 
Invoice Total, 
Customer name, 
Country,
and Sale Agent name 
for all invoices and customers.*/

select 
Invoice.Total 'invoice total', 
Customer.FirstName 'customer first name', Customer.LastName 'customer last name', Customer.Country 'customer country',
Employee.FirstName 'sales agent first name', Employee.LastName 'sales agent last name'
from Employee, Customer, Invoice
where Employee.Title = 'Sales Support Agent'
and Customer.SupportRepId = Employee.EmployeeId
and Invoice.CustomerId = Customer.CustomerId;