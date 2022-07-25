SELECT
	COUNT(*) AS quantidade_musicas_no_historico
FROM SpotifyClone.usuarios_musicas AS musicas
INNER JOIN SpotifyClone.usuarios AS usuarios
	ON musicas.usuario_id = usuarios.usuario_id
WHERE usuarios.usuario = 'Bill';