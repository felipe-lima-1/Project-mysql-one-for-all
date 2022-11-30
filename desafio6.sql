SELECT 
    FORMAT(MIN(valor_plano), 2) AS faturamento_minimo,
    FORMAT(MAX(valor_plano), 2) AS faturamento_maximo,
    FORMAT(AVG(valor_plano), 2) AS faturamento_medio,
    FORMAT(SUM(valor_plano), 2) AS faturamento_total
FROM
    SpotifyClone.planos
        INNER JOIN
    SpotifyClone.usuarios ON SpotifyClone.usuarios.id_plano = SpotifyClone.planos.id_plano;