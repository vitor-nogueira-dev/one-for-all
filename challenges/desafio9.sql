SELECT
  COUNT(*) AS musicas_no_historico
FROM
  usuario
  INNER JOIN historico_reproducoes AS historico ON usuario.usuario_id = historico.usuario_id
WHERE
  usuario.nome = 'Barbara Liskov';