SELECT
	users.usuario AS usuario,
    COUNT(historico.usuario_id) AS qtde_musicas_ouvidas,
	ROUND(SUM(musicas.duracao_segundos) / 60, 2) AS total_minutos
FROM SpotifyClone.usuarios AS users
INNER JOIN SpotifyClone.usuarios_musicas AS historico
	ON users.usuario_id = historico.usuario_id
INNER JOIN SpotifyClone.musicas AS musicas
	ON musicas.musica_id = historico.musica_id
GROUP BY users.usuario_id
ORDER BY users.usuario ASC;