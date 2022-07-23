SELECT
	COUNT(DISTINCT musicas.titulo) AS cancoes,
    COUNT(DISTINCT artistas.artista) AS artistas,
    COUNT(DISTINCT albuns.album) AS albuns
FROM SpotifyClone.musicas AS musicas
JOIN SpotifyClone.artistas AS artistas
JOIN SpotifyClone.albuns AS albuns;