SELECT 
    user.usuario AS usuario,
    CASE
        WHEN YEAR(MAX(historico.data_reproducao)) >= 2021 THEN 'Usuário ativo'
        ELSE 'Usuário inativo'
    END AS status_usuario
FROM
    SpotifyClone.usuarios AS user
        INNER JOIN
    SpotifyClone.historico_de_reproducoes AS historico ON historico.usuario_id = user.usuario_id
GROUP BY usuario
ORDER BY usuario;