CREATE TABLE IF NOT EXISTS Artist (
	artist_id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL
)

CREATE TABLE IF NOT EXISTS Genre (
	genre_id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS  Album (
	album_id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	release_date DATE
);

CREATE TABLE IF NOT EXISTS Track (
	track_id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	duration TIME NOT NULL,
	album INTEGER NOT NULL REFERENCES Album(album_id)
);

CREATE TABLE IF NOT EXISTS Collection (
	collection_id SERIAL PRIMARY KEY,
	name VARCHAR(50),
	release_date DATE
);

CREATE TABLE IF NOT EXISTS Collection_Track (
	track_id INTEGER REFERENCES Track(track_id),
	collection_id INTEGER REFERENCES Collection(collection_id),
	PRIMARY KEY (track_id, collection_id)
);

CREATE TABLE IF NOT EXISTS Artist_Album (
	artist_id INTEGER REFERENCES Artist (artist_id),
	album_id INTEGER REFERENCES Album(album_id),
	CONSTRAINT pk PRIMARY KEY (artist_id, album_id)
);

CREATE TABLE IF NOT EXISTS Artist_Genre (
	artist_id INTEGER REFERENCES Artist(artist_id),
	genre_id INTEGER REFERENCES Genre(genre_id),
	PRIMARY KEY (artist_id, genre_id)
);

