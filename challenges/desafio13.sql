SELECT
  CASE
    WHEN idade <= 30 THEN 'Até 30 anos'
    WHEN idade > 30
    AND idade <= 60 THEN 'Entre 31 e 60 anos'
    ELSE 'Maior de 60 anos'
  END AS faixa_etaria,
  COUNT(DISTINCT usuario.usuario_id) AS total_pessoas_usuarias,
  COUNT(favorite_songs.usuario_id) AS total_favoritadas
FROM
  usuario
  LEFT JOIN favorite_songs ON favorite_songs.usuario_id = usuario.usuario_id
  LEFT JOIN cancoes ON cancoes.cancao_id = favorite_songs.cancao_id
GROUP BY
  faixa_etaria;