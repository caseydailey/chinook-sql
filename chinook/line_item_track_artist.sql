/*
Provide a query that includes the purchased track name 
AND artist name 
with each invoice line item.
*/

select InvoiceLine.InvoiceLineId 'line item id', Track.Name 'track name', Artist.Name 'artist name'
from InvoiceLine, Track, Album, Artist
where InvoiceLine.TrackId = Track.TrackId
and Track.AlbumId = Album.ArtistId;
