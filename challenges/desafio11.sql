SELECT
  album.nome AS album,
  COUNT(fav.cancao_id) AS favoritadas
FROM
  album
  INNER JOIN cancoes ON cancoes.album_id = album.album_id
  INNER JOIN favorite_songs AS fav ON fav.cancao_id = cancoes.cancao_id
GROUP BY
  album.nome
ORDER BY
  favoritadas DESC,
  album ASC
LIMIT
  3;
  