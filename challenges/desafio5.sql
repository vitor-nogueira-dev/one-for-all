SELECT
  cancoes.nome AS cancao,
  COUNT(historico.cancao_id) AS reproducoes
FROM
  cancoes AS cancoes
  INNER JOIN historico_reproducoes AS historico ON historico.cancao_id = cancoes.cancao_id
GROUP BY
  cancao
ORDER BY
  reproducoes DESC,
  cancao
LIMIT
  2;