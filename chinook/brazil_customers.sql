--Provide a query only showing the Customers from Brazil.
select Customer.FirstName, Customer.LastName, Customer.CustomerId, Customer.Country
from Customer
where Customer.Country = 'Brazil';
