SELECT
	musicas.titulo AS cancao,
    COUNT(historico.musica_id) AS reproducoes
FROM SpotifyClone.usuarios_musicas AS historico
INNER JOIN SpotifyClone.musicas AS musicas
	ON historico.musica_id = musicas.musica_id
GROUP BY historico.musica_id
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;