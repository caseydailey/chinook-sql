 --Provide a query that shows the most purchased Media Type.

select MediaType.Name, "$" || printf("%.2f", sum(Track.UnitPrice)) 'total sales'
from Artist, Album, Track, MediaType
where Artist.ArtistId = Album.ArtistId
and Album.AlbumId = Track.AlbumId
and Track.MediaTypeId = MediaType.MediaTypeId
group by MediaType.Name
order by sum(Track.UnitPrice) desc
limit 1;