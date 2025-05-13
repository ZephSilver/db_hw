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

