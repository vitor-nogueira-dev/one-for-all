SELECT
  user.nome AS pessoa_usuaria,
  IF(
    YEAR(MAX(reproducoes.data_reproducao)) >= 2021,
    'Ativa',
    'Inativa'
  ) AS status_pessoa_usuaria
FROM
  usuario AS user
  INNER JOIN historico_reproducoes AS reproducoes ON user.usuario_id = reproducoes.usuario_id
GROUP BY
  pessoa_usuaria
ORDER BY
  pessoa_usuaria;
