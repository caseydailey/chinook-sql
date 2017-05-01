/*
Provide a query that shows 
the total number of tracks in each playlist. 
The Playlist name should be include on the resulant table.
*/

select 
Playlist.Name 'playlist name', 
count(PlaylistTrack.TrackId) 'number of tracks'
from  Playlist
left join PlaylistTrack on PlaylistTrack.PlaylistId = Playlist.PlaylistId
group by Playlist.PlaylistId;
