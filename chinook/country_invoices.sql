/*Provide a query that shows the 
# of invoices per country. 
HINT: GROUP BY*/

select count(Invoice.InvoiceId) 'number of invoices', Invoice.BillingCountry 'country'
from Invoice
group by Invoice.BillingCountry;