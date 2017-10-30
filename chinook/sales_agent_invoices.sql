/*Provide a query that shows the invoices associated with each sales agent. 
The resultant table should include the Sales Agent's full name.*/

select Employee.FirstName 'Sales Rep First Name', Employee.LastName 'Sales Rep Last Name', Invoice.InvoiceId
from Employee, Invoice, Customer
where Employee.Title = 'Sales Support Agent'
and Customer.SupportRepId = Employee.EmployeeId
and Customer.CustomerId = Invoice.customerId;