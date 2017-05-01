--Provide a query that shows the most purchased track of 2013.

select Track.name, count(Invoice.InvoiceId)  'number of tracks sold'
from Track , Invoice, InvoiceLine
where InvoiceLine.TrackId = Track.TrackId
and Invoice.InvoiceId = InvoiceLine.InvoiceId 
and Invoice.InvoiceDate GLOB '2013*'
group by Track.Name
having count(Invoice.InvoiceId) = 
	(
	select count(Invoice.InvoiceId)
	from Track , Invoice, InvoiceLine
	where InvoiceLine.trackId = Track.TrackId
	and Invoice.InvoiceId = InvoiceLine.InvoiceId 
	and Invoice.InvoiceDate GLOB '2013*'
	group by Track.name
	order by count(Invoice.InvoiceId) desc
	limit 1
	); 