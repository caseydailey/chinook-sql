-- --Provide a query that shows the most purchased track of 2013.

-- select Track.name, count(Invoice.InvoiceId)  'number of tracks sold'
-- from Track , Invoice, InvoiceLine
-- where InvoiceLine.TrackId = Track.TrackId
-- and Invoice.InvoiceId = InvoiceLine.InvoiceId 
-- and Invoice.InvoiceDate GLOB '2013*'
-- group by Track.Name
-- having count(Invoice.InvoiceId) = 
-- 	(
-- 	select count(Invoice.InvoiceId)
-- 	from Track , Invoice, InvoiceLine
-- 	where InvoiceLine.trackId = Track.TrackId
-- 	and Invoice.InvoiceId = InvoiceLine.InvoiceId 
-- 	and Invoice.InvoiceDate GLOB '2013*'
-- 	group by Track.name
-- 	order by count(Invoice.InvoiceId) desc
-- 	)
-- 	limit 1;





SELECT Sales.TrackName, max(Sales.SalesPerTrack)

from (
	select t.name as TrackName, count(l.invoiceid) as SalesPerTrack
	from invoiceline l, invoice i, Tack t
	where l.TrackId
	and l.invoiceid = i.InvoiceId
	and strftime("%Y", i.invoiceDate) = "2013"
	group by t.Name
) as Sales