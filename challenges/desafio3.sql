SELECT
  user.nome AS pessoa_usuaria,
  COUNT(DISTINCT reproducao.cancao_id) AS musicas_ouvidas,
  ROUND(SUM(cancao.duracao_segundos / 60), 2) AS total_minutos
FROM
  usuario AS user
  INNER JOIN historico_reproducoes AS reproducao ON reproducao.usuario_id = user.usuario_id
  INNER JOIN cancoes AS cancao ON reproducao.cancao_id = cancao.cancao_id
GROUP BY
  pessoa_usuaria
ORDER BY
  pessoa_usuaria;