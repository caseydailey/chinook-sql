--Which sales agent made the most in sales over all?

select Employee.FirstName, Employee.LastName, count(Invoice.InvoiceId) as sales
from Employee, Invoice, Customer
where Employee.EmployeeId = Customer.SupportRepId
and Customer.CustomerId = Invoice.CustomerId
order by sales;