SELECT * FROM
    Empresa e
LEFT JOIN
    Servicos s ON e.idEmpresa = s.idEmpresa;
