SELECT
  artist.nome AS artista,
  album.nome AS album
FROM
  artista AS artist
  INNER JOIN album ON album.artista_id = artist.artista_id
WHERE
  artist.nome = 'Elis Regina';