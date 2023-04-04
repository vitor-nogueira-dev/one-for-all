SELECT
  COUNT(DISTINCT cancao.nome) AS cancoes,
  COUNT(DISTINCT artist.nome) AS artistas,
  COUNT(DISTINCT album.nome) AS albuns
FROM
  cancoes AS cancao
  INNER JOIN album AS album ON cancao.album_id = album.album_id
  INNER JOIN artista AS artist ON album.artista_id = artist.artista_id;
