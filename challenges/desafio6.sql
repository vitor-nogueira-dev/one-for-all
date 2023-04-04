SELECT
  MIN(plano.valor_plano) faturamento_minimo,
  MAX(plano.valor_plano) faturamento_maximo,
  FORMAT(AVG(plano.valor_plano), 2) faturamento_medio,
  SUM(plano.valor_plano) AS faturamento_total
FROM
  usuario AS user
  INNER JOIN plano ON user.plano_id = plano.plano_id;