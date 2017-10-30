--How many Invoices were there in 2009 and 2011?

select count(Invoice.InvoiceId) 
from Invoice i
where i.InvoiceDate GLOB '2009*' or i.InvoiceDate GLOB '2011*';