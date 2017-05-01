 /*Looking at the InvoiceLine table, 
 provide a query that COUNTs 
 the number of line items for Invoice ID 37.*/
 
 select count(InvoiceLine.Quantity)
 from InvoiceLine
 where InvoiceLine.InvoiceId = 37;