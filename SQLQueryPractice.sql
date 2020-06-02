-- 1.
--SELECT id, [Label]
--FROM Genre

-- 2.
--SELECT id, ArtistName, YearEstablished
--FROM Artist
--ORDER BY (Artist.ArtistName)

-- 3.
--SELECT
--    song.Id,
--    Title,
--    SongLength,
--    ReleaseDate,
--    GenreId,
--    ArtistId,
--    AlbumId,
--    artist.ArtistName
--FROM Song song
--JOIN Artist artist ON artist.id = song.ArtistId

-- 4.
--SELECT
--	artist.Id,
--	ArtistName,
--	YearEstablished
--FROM Artist artist
--JOIN Album album ON album.GenreId = 7


-- 5.
--SELECT
--	artist.Id,
--	ArtistName,
--	YearEstablished
--FROM Artist artist
--JOIN Album album ON album.ArtistId = artist.Id
--JOIN Genre genre ON genre.id = album.GenreId
--WHERE genre.Label = 'Rock' or genre.Label = 'Jazz'

-- 6.
--SELECT
--	album.Id,
--	album.Title,
--	album.Label
--FROM Album album
--LEFT JOIN Song song ON song.AlbumId = album.Id
--WHERE song.AlbumId IS NULL

-- 7. 
--INSERT INTO Artist (ArtistName,YearEstablished) VALUES ('Kanye West',2000)

-- 8. 
--INSERT INTO Album (Title,ReleaseDate,AlbumLength,[Label],ArtistId,GenreId) VALUES ('Life Of Pablo', 2016, 40000, 'GOOD', 28, 13)

-- 9.
--INSERT INTO Song (Title,SongLength,ReleaseDate,GenreId, ArtistId, AlbumId) VALUES ('Father Stretch My Hands Pt. 1', 1000, '02/14/2016', 13, 28, 23)
--INSERT INTO Song (Title,SongLength,ReleaseDate,GenreId, ArtistId, AlbumId) VALUES ('Ultralight Beam', 800, '02/14/2016', 13, 28, 23)

-- 10.
--SELECT
--	song.Title,
--	album.Title,
--	artist.ArtistName
--FROM Song song
--JOIN Artist artist ON artist.Id = song.ArtistId
--JOIN Album album ON album.Id = song.AlbumId
--WHERE artist.ArtistName = 'Kanye West'

-- 11.
--SELECT
--	album.Title AS 'Album',
--	Count(song.Id) AS 'Number of Songs'
--FROM Album album
--LEFT JOIN Song song ON album.Id = song.AlbumId
--GROUP BY (album.Title)

-- 12.
--SELECT
--	artist.ArtistName,
--	Count(song.Id) AS 'Number of Songs'
--FROM Artist artist
--LEFT JOIN Song song ON song.ArtistId = artist.id
--GROUP BY (artist.ArtistName)

-- 13.
--SELECT
--	genre.Label,
--	Count(song.Id) AS 'Number of Songs'
--FROM Genre genre
--LEFT JOIN Song song ON song.GenreId = genre.Id
--GROUP BY (genre.Label)

-- 14.
--SELECT
--	artist.ArtistName,
--	Count(DISTINCT album.Label) AS "Number of Labels"
--FROM Artist artist
--JOIN Album album ON album.ArtistId = artist.Id
--GROUP BY(artist.ArtistName)

-- 15.
--SELECT
--	album.Title,
--	album.AlbumLength
--From Album album
--WHERE album.AlbumLength = (SELECT MAX (album.AlbumLength) FROM album)

-- 16.
--SELECT
--	song.Title,
--	song.SongLength,
--	album.Title
--FROM Song song
--JOIN Album album ON album.Id = song.AlbumId
--WHERE song.SongLength = (SELECT MAX (song.SongLength) FROM song)

	



