/*Provide a query that shows 
all the Tracks, but displays no IDs. 
The result should include the Album name, Media type and Genre.*/

select Album.Title 'album name', MediaType.Name 'Media Type', Genre.Name 'genre name'
from Album, MediaType, Genre, Track
where Album.AlbumId = Track.AlbumId
and MediaType.MediaTypeId = Track.MediaTypeId 
and Genre.GenreId = Track.GenreId;