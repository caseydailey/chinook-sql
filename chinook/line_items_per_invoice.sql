/*Looking at the InvoiceLine table, 
provide a query that COUNTs 
the number of line items for each Invoice. 
HINT: GROUP BY*/

select count(InvoiceLine.Quantity)
from InvoiceLine
group by InvoiceLine.InvoiceId;

