SELECT 
    usuario,
    COUNT(usuario) AS qt_de_musicas_ouvidas,
    ROUND(SUM(cancoes.duracao_segundos) / 60, 2) AS total_minutos
FROM
    SpotifyClone.historico_de_reproducoes AS historico
        INNER JOIN
    SpotifyClone.cancoes AS cancoes ON (historico.id_cancao = cancoes.id_cancao)
        INNER JOIN
    SpotifyClone.usuarios AS users ON (historico.usuario_id = users.usuario_id)
GROUP BY usuario
ORDER BY usuario;