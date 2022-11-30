SELECT 
    cancoes.cancao AS cancao,
    COUNT(historico.id_cancao) AS reproducoes
FROM
    SpotifyClone.cancoes AS cancoes
        INNER JOIN
    SpotifyClone.historico_de_reproducoes AS historico ON cancoes.id_cancao = historico.id_cancao
GROUP BY cancao
ORDER BY reproducoes DESC , cancao
LIMIT 2;