-- Most Played Songs--
SELECT 
    Songs.song_name,
    Artists.artist_name,
    COUNT(Listening_History.song_id) AS play_count
FROM Listening_History
JOIN Songs ON Listening_History.song_id = Songs.song_id
JOIN Artists ON Songs.artist_id = Artists.artist_id
GROUP BY Songs.song_name, Artists.artist_name
ORDER BY play_count DESC;

-- Most Popular Artists--
SELECT 
    Artists.artist_name,
    COUNT(Listening_History.song_id) AS total_plays
FROM Listening_History
JOIN Songs ON Listening_History.song_id = Songs.song_id
JOIN Artists ON Songs.artist_id = Artists.artist_id
GROUP BY Artists.artist_name
ORDER BY total_plays DESC;

-- Users and Listening Counts--
SELECT 
    Users.username,
    COUNT(Listening_History.song_id) AS total_listens
FROM Listening_History
JOIN Users ON Listening_History.user_id = Users.user_id
GROUP BY Users.username
ORDER BY total_listens DESC;

-- Songs Longer Than 250 Seconds--
SELECT 
    song_name,
    duration_seconds
FROM Songs
WHERE duration_seconds > 250
ORDER BY duration_seconds DESC;

-- Music Genres Analysis--
SELECT 
    genre,
    COUNT(song_id) AS total_songs
FROM Songs
GROUP BY genre
ORDER BY total_songs DESC;
