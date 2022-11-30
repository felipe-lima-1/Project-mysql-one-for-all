SELECT 
    artista AS artista, album AS album
FROM
    SpotifyClone.artistas
        INNER JOIN
    SpotifyClone.albuns
WHERE
    SpotifyClone.artistas.artista LIKE 'Elis Regina'
        AND SpotifyClone.albuns.id_artista = '3';