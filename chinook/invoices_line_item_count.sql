/*Provide a query that shows all Invoices but includes the # of invoice line items.*/

select Invoice.*, count(InvoiceLine.Quantity) 'number of line items'
from Invoice, InvoiceLine
where Invoice.Invoiceid = InvoiceLine.InvoiceId
group by Invoice.InvoiceId;
