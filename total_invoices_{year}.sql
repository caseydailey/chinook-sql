--How many Invoices were there in 2009 and 2011?

select count(Invoice.InvoiceId) 
from Invoice
where Invoice.InvoiceDate GLOB '2009*' or Invoice.InvoiceDate GLOB '2011*';