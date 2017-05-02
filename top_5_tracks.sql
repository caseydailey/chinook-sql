--Provide a query that shows the top 5 most purchased tracks over all.

select Track.Name, count(InvoiceLine.InvoiceLineId) 'total sold'
from Track, Invoiceline
where Track.TrackId = InvoiceLine.TrackId
group by Track.Name
order by count(InvoiceLine.InvoiceLineId) desc
limit 5;
