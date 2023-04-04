SELECT
  artista.nome AS artista,
  CASE
    WHEN COUNT(fav.cancao_id) >= 5 THEN 'A'
    WHEN COUNT(fav.cancao_id) >= 3 THEN 'B'
    WHEN COUNT(fav.cancao_id) >= 1 THEN 'C'
    ELSE '-'
  END AS ranking
FROM
  artista
  INNER JOIN album ON album.artista_id = artista.artista_id
  INNER JOIN cancoes ON cancoes.album_id = album.album_id
  LEFT JOIN favorite_songs AS fav ON fav.cancao_id = cancoes.cancao_id
GROUP BY
  artista
ORDER BY
  CASE
    ranking
    WHEN 'A' THEN 1
    WHEN 'B' THEN 2
    WHEN 'C' THEN 3
    ELSE 4
  END,
  artista;
  