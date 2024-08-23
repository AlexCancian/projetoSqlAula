SELECT
    u.nome,
    s.nomeServico,
    e.nome
FROM
    usuario u,
    Servicos s,
    Empresa e
WHERE
    u.idEmpresa = e.idEmpresa
    AND s.idEmpresa = e.idEmpresa;
