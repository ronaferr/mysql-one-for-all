SELECT
	DISTINCT u.usuario AS usuario,
    IF(MAX(h.data_reproducao) LIKE '2021%', 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM
	SpotifyClone.usuarios AS u
INNER JOIN
	SpotifyClone.historico AS h
	ON h.usuario_id = u.usuario_id
GROUP BY
	usuario
ORDER BY
	usuario ASC;
