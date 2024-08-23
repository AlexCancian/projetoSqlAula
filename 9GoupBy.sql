SELECT
    idEmpresa,
    AVG(valor) AS mediaValorServicos
FROM
    Servicos
GROUP BY
    idEmpresa;
