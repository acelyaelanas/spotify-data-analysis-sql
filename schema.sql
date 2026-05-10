CREATE TABLE Users (
    user_id INTEGER PRIMARY KEY,
    username TEXT,
    country TEXT,
    age INTEGER
);

CREATE TABLE Artists (
    artist_id INTEGER PRIMARY KEY,
    artist_name TEXT
);

CREATE TABLE Songs (
    song_id INTEGER PRIMARY KEY,
    song_name TEXT,
    artist_id INTEGER,
    duration_seconds INTEGER,
    genre TEXT,
    album_name TEXT,
    language TEXT,
    FOREIGN KEY (artist_id) REFERENCES Artists(artist_id)
);

CREATE TABLE Listening_History (
    history_id INTEGER PRIMARY KEY,
    user_id INTEGER,
    song_id INTEGER,
    listening_date TEXT,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (song_id) REFERENCES Songs(song_id)
); 
