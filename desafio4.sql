SELECT
	usuarios.usuario AS usuario,
    IF(
     MAX(YEAR(historico.data_reproducao)) >= 2021, 'Usuário ativo', 'Usuário inativo'
    ) AS condicao_usuario
FROM SpotifyClone.usuarios AS usuarios
INNER JOIN SpotifyClone.usuarios_musicas AS historico 
	ON usuarios.usuario_id = historico.usuario_id
GROUP BY historico.usuario_id
ORDER BY usuarios.usuario ASC;