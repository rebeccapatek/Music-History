--SELECT * FROM Genre;

--INSERT INTO Artist ( ArtistName, YearEstablished) VALUES ('Melissa Carper', 1982);
--SELECT * FROM Artist;

--INSERT INTO Album (AlbumLength, ArtistId, [Label],Title, ReleaseDate) VALUES (2032, 29,'ColoradoRiver', 'Arkansas Bound', '2/3/2014');
--SELECT * FROM Album;

--INSERT INTO Song (AlbumId, ArtistId, ReleaseDate, Title, SongLength, GenreId) VALUES (22, 29, '2/3/2014', 'Gamblin Bar Room Blues', 180, 8);
--INSERT INTO Song (AlbumId, ArtistId, ReleaseDate, Title, SongLength, GenreId) VALUES (22, 28, '2/3/2014', 'Arkansas Bound', 180, 8);

--SELECT s.Title, al.Title from Song s LEFT JOIN Album al on s.AlbumId=al.id;

--SELECT COUNT(AlbumId) as 'SongCount', al.Title FROM Song s Left Join Album al on s.AlbumId=al.Id
--GROUP BY AlbumId, al.Title;

--SELECT COUNT(ArtistId) as 'SongCount', ar.ArtistName FROM Song s Left Join Artist ar on s.ArtistId=ar.Id 
--GROUP BY ArtistId, ar.ArtistName;

--SELECT COUNT(GenreId) as 'SongCount', g.Label FROM Song s Left Join  Genre g on s.GenreId=g.Id 
--GROUP BY GenreId, g.Label;

--SELECT Title, AlbumLength as 'Album Length' FROM Album 
--WHERE AlbumLength = (SELECT MAX(AlbumLength)FROM Album);

SELECT s.Title, al.Title as 'Album Title', SongLength as 'Song Length' FROM Song s
LEFT JOIN Album al on s.AlbumId=al.Id
WHERE SongLength= (SELECT MAX(SongLength) FROM Song);

