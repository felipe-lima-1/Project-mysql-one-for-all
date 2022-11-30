SELECT 
    artista AS artista,
    album AS album,
    COUNT(follow.id_artista) AS seguidores
FROM
    SpotifyClone.artistas
        INNER JOIN
    SpotifyClone.albuns ON SpotifyClone.albuns.id_artista = SpotifyClone.artistas.id_artista
        INNER JOIN
    SpotifyClone.seguindo_artistas AS follow ON follow.id_artista = SpotifyClone.artistas.id_artista
GROUP BY SpotifyClone.albuns.album_id
ORDER BY seguidores DESC , artista , album;