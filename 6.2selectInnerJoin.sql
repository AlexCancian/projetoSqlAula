SELECT
    u.nome ,
    a.dataAgenda,
    s.nomeServico
FROM
    usuario u
INNER JOIN
    Agenda a ON u.idUsuario = a.idUsuario
INNER JOIN
    Servicos s ON a.idServicos = s.idServico;
