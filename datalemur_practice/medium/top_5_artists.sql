--https://datalemur.com/questions/top-fans-rank
--Top 5 Artists [Spotify SQL Interview Question]

WITH top_artists
AS (
  SELECT 
    artist_id
    ,DENSE_RANK() OVER (
      ORDER BY song_count DESC
      ) AS artist_rank
  FROM (
    SELECT
      songs.artist_id,
      COUNT(songs.song_id) AS song_count
      from songs
    INNER JOIN 
      global_song_rank
    ON songs.song_id = global_song_rank.song_id
    WHERE 
      global_song_rank.rank <= 10
    GROUP BY songs.artist_id
    ) AS top_songs
  )
  
SELECT 
  artists.artist_name
  ,top_artists.artist_rank
FROM 
  top_artists
JOIN 
  artists
ON top_artists.artist_id = artists.artist_id
WHERE artist_rank <= 5
ORDER BY artist_rank, artist_name;
