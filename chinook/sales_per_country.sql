--Provide a query that shows the total sales per country.

select Invoice.BillingCountry 'country', 
count(Invoice.InvoiceId) 'number of sales'
from Invoice
group by Invoice.BillingCountry;

--total value:
select Invoice.BillingCountry 'country', 
sum(Invoice.Total) 'total value of sales'
from Invoice
group by Invoice.BillingCountry;
