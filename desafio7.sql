SELECT 
	artistas.artista AS artista,
    albuns.album AS album,
    COUNT(seguidores.artista_id) AS seguidores
FROM SpotifyClone.artistas AS artistas
INNER JOIN SpotifyClone.albuns AS albuns
	ON artistas.artista_id = albuns.artista_id
INNER JOIN SpotifyClone.usuarios_artista AS seguidores
	ON artistas.artista_id = seguidores.artista_id
GROUP BY albuns.album_id
ORDER BY seguidores DESC, artista ASC, album ASC;