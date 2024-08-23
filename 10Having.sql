SELECT
    idEmpresa,
    AVG(valor) AS mediaValorServicos
FROM
    Servicos
GROUP BY
    idEmpresa
HAVING
    AVG
(valor) > 50;
