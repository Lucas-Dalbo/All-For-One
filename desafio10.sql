SELECT
	musicas.titulo AS nome,
    COUNT(*) AS reproducoes
FROM SpotifyClone.musicas AS musicas
INNER JOIN SpotifyClone.usuarios_musicas AS historico
	ON musicas.musica_id = historico.musica_id
INNER JOIN SpotifyClone.usuarios AS usuarios
	ON historico.usuario_id = usuarios.usuario_id
INNER JOIN SpotifyClone.planos AS planos
	ON usuarios.plano_id = planos.plano_id
WHERE planos.plano IN ('gratuito', 'pessoal')
GROUP BY musicas.musica_id
ORDER BY nome ASC;