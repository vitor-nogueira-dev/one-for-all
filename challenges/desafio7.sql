SELECT
  artist.nome AS artista,
  album.nome AS album,
  COUNT(seguidores.artista_id) AS pessoas_seguidoras
FROM
  artista AS artist
  INNER JOIN album AS album ON album.artista_id = artist.artista_id
  INNER JOIN seguindo_artistas AS seguidores ON seguidores.artista_id = artist.artista_id
GROUP BY
  artista,
  album
ORDER BY
  pessoas_seguidoras DESC,
  artista ASC,
  album ASC;
