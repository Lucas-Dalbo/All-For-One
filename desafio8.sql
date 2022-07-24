SELECT
	artistas.artista AS artista,
    albuns.album AS album
FROM SpotifyClone.artistas AS artistas
INNER JOIN SpotifyClone.albuns AS albuns
	ON artistas.artista_id = albuns.artista_id
WHERE artista = 'Walter Phoenix'
ORDER BY album ASC;