--Provide a query that includes the purchased track name with each invoice line item.

select InvoiceLine.InvoiceLineId 'line item id', Track.Name 'track name'
from InvoiceLine, Track
where InvoiceLine.TrackId = Track.TrackId;