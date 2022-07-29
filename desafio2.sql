SELECT
	COUNT(c.cancao) AS cancoes,
    COUNT(DISTINCT a.artista_id) AS artistas,
    COUNT(DISTINCT c.album_id) AS albuns
FROM
	SpotifyClone.cancoes AS c
INNER JOIN
	SpotifyClone.albuns AS a ON a.album_id = c.album_id;
