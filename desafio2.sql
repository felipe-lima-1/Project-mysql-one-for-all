SELECT
	COUNT(DISTINCT cancoes.id_cancao) AS cancoes,
    COUNT(DISTINCT artistas.id_artista) AS artistas,
    COUNT(DISTINCT albuns.album_id) AS albuns
    
FROM SpotifyClone.cancoes
INNER JOIN SpotifyClone.artistas AS artistas
ON cancoes.id_artista = artistas.id_artista
INNER JOIN SpotifyClone.albuns AS albuns
ON cancoes.album_id = albuns.album_id;