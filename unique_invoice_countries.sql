/*Provide a query showing a unique/distinct list of billing countries from the Invoice table.*/

select distinct Invoice.BillingCountry
from Invoice;