SELECT * FROM
    usuario u
RIGHT JOIN
    Empresa e ON u.idEmpresa = e.idEmpresa;
