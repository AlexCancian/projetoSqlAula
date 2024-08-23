-- Inserindo registros na tabela Pais
INSERT INTO Pais (nomePais, siglaPais) VALUES
('Brasil', 'BR'),
('Estados Unidos', 'US'),
('Argentina', 'AR'),
('Canadá', 'CA'),
('México', 'MX');

-- Inserindo registros na tabela Estado
INSERT INTO Estado (nomeEstado, siglaEstado, idPais) VALUES
('São Paulo', 'SP', 1),
('Rio de Janeiro', 'RJ', 1),
('Buenos Aires', 'BA', 3),
('Ontario', 'ON', 4),
('Cidade do México', 'CM', 5);

-- Inserindo registros na tabela Cidade
INSERT INTO Cidade (nomeCidade, idEstado) VALUES
('São Paulo', 1),
('Rio de Janeiro', 2),
('Buenos Aires', 3),
('Toronto', 4),
('Cidade do México', 5);

-- Inserindo registros na tabela Bairro
INSERT INTO Bairro (nomeBairro, idCidade) VALUES
('Centro', 1),
('Botafogo', 2),
('Palermo', 3),
('Downtown', 4),
('Roma', 5);

-- Inserindo registros na tabela Endereco
INSERT INTO Endereco (logradouro, numero, CEP, idBairro) VALUES
('Rua 1', '100', '01001000', 1),
('Avenida Atlântica', '200', '22021001', 2),
('Calle 9', '300', 'C1043A', 3),
('Yonge Street', '400', 'M5B1N8', 4),
('Avenida Reforma', '500', '06600', 5);

-- Inserindo registros na tabela Empresa
INSERT INTO Empresa (nome, telefone, idEndereco, cnpj) VALUES
('Empresa A', '11999999999', 1, '12345678000101'),
('Empresa B', '21999999999', 2, '22345678000101'),
('Empresa C', '54999999999', 3, '32345678000101'),
('Empresa D', '11999999998', 4, '42345678000101'),
('Empresa E', '21999999998', 5, '52345678000101');

-- Inserindo registros na tabela Servicos
INSERT INTO Servicos (nomeServico, descricaoServico, tempoServico, statusServico, valor, idEmpresa) VALUES
('Corte de cabelo', 'Corte simples', '00:30:00', 1, 50.00, 1),
('Manicure', 'Corte e esmaltação', '01:00:00', 1, 70.00, 2),
('Pedicure', 'Corte e esmaltação', '01:00:00', 1, 80.00, 3),
('Massagem', 'Massagem relaxante', '01:30:00', 1, 120.00, 4),
('Depilação', 'Depilação completa', '02:00:00', 1, 150.00, 5),
('Corte de cabelo', 'Corte Balaca', '00:35:00', 1, 85.00, 5);

-- Inserindo registros na tabela usuario
INSERT INTO usuario (nome, cpf, celular, dataNasc, status, idEmpresa, admin, email, senha) VALUES
('João Silva', '11111111111', '11999999999', '1990-01-01', 1, 1, 1, 'joao@empresaA.com', 'senha123'),
('Maria Oliveira', '22222222222', '21999999999', '1991-02-02', 1, 2, 1, 'maria@empresaB.com', 'senha123'),
('Carlos Souza', '33333333333', '31999999999', '1992-03-03', 1, 3, 0, 'carlos@empresaC.com', 'senha123'),
('Ana Costa', '44444444444', '41999999999', '1993-04-04', 1, 4, 0, 'ana@empresaD.com', 'senha123'),
('Pedro Mendes', '55555555555', '51999999999', '1994-05-05', 1, 5, 1, 'pedro@empresaE.com', 'senha123');

-- Inserindo registros na tabela Agenda
INSERT INTO Agenda (dataAgenda, horaInicialAgenda, aceiteAgenda, horaFinal, idServicos, idUsuario) VALUES
('2024-09-01', '09:00:00', 1, '09:30:00', 1, 1),
('2024-09-01', '10:00:00', 0, '11:00:00', 2, 2),
('2024-09-01', '11:00:00', 1, '12:00:00', 3, 3),
('2024-09-02', '09:00:00', 0, '10:30:00', 4, 4),
('2024-09-02', '10:30:00', 1, '12:30:00', 5, 5);

-- Inserindo registros na tabela feriados
INSERT INTO feriados (dataFeriado, nomeFeriado, ativo, idEmpresa) VALUES
('2024-01-01', 'Ano Novo', 1, 1),
('2024-02-25', 'Carnaval', 1, 2),
('2024-04-21', 'Tiradentes', 1, 3),
('2024-07-09', 'Revolução Constitucionalista', 1, 4),
('2024-12-25', 'Natal', 1, 5);

-- Inserindo registros na tabela horasFolgas
INSERT INTO horasFolgas (dataHrsFolgas, idEmpresa, horaIncio, horaFim, ativo) VALUES
('2024-09-10', 1, '09:00:00', '12:00:00', 1),
('2024-09-15', 2, '13:00:00', '17:00:00', 1),
('2024-09-20', 3, '08:00:00', '12:00:00', 1),
('2024-09-25', 4, '14:00:00', '18:00:00', 1),
('2024-09-30', 5, '10:00:00', '14:00:00', 1);

-- Inserindo registros na tabela diasSemana
INSERT INTO diasSemana (nome, ativo, codigoDiaSemana, idEmpresa) VALUES
('Segunda-feira', 1, 1, 1),
('Terça-feira', 1, 2, 2),
('Quarta-feira', 1, 3, 3),
('Quinta-feira', 1, 4, 4),
('Sexta-feira', 1, 5, 5);

-- Inserindo registros na tabela horaTrabalhoDiaSemana
INSERT INTO horaTrabalhoDiaSemana (horarioInicio, ativo, horarioFim, iddiasSemana) VALUES
('09:00:00', 1, '18:00:00', 1),
('08:00:00', 1, '17:00:00', 2),
('07:00:00', 1, '16:00:00', 3),
('10:00:00', 1, '19:00:00', 4),
('11:00:00', 1, '20:00:00', 5);

-- Inserindo registros na tabela Config
INSERT INTO Config (nome, ativo, idEmpresa) VALUES
('Configuração A', 1, 1),
('Configuração B', 1, 2),
('Configuração C', 1, 3),
('Configuração D', 1, 4),
('Configuração E', 1, 5);
