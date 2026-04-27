SELECT ArtistName,
       COUNT(*) AS total_streams
FROM Artists
JOIN Albums ON Artists.ArtistID = Albums.ArtistID
JOIN Songs ON Albums.AlbumID = Songs.AlbumID
JOIN Streams ON Songs.SongID = Streams.SongID
GROUP BY ArtistName
ORDER BY total_streams DESC;
