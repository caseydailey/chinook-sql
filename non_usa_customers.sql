/*Provide a query showing Customers who are not in the US
(just their full names, customer ID and country) */
select Customer.FirstName, Customer.LastName, Customer.CustomerId, Customer.Country
from Customer
where Customer.Country != 'USA';

