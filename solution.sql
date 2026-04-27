SELECT artistname,
       COUNT(*) AS total_streams
FROM artists
JOIN albums ON artists.artistid = albums.artistid
JOIN songs ON albums.albumid = songs.albumid
JOIN streams ON songs.songid = streams.songid
GROUP BY artistname
ORDER BY total_streams DESC;
