CREATE TABLE Carro (
    codigo NUMBER PRIMARY KEY,
    placa VARCHAR(20) UNIQUE NOT NULL,
    modelo VARCHAR(50) NOT NULL,
    ano NUMBER NOT NULL,
    nome_motorista VARCHAR(100) NOT NULL
);
INSERT INTO Carro (codigo, placa, modelo,ano, nome_motorista)
VALUES (1, '001-002', 'Jetta', '2014', 'Joao Augusto')

INSERT INTO Carro (codigo, placa, modelo,ano, nome_motorista)
VALUES (2, '002-003', 'Golf', '2010', 'Simone Mendes')

INSERT INTO Carro (codigo, placa, modelo, ano, nome_motorista)
VALUES (3, '003-004', 'Passat', '2023', 'Pedro Paulo')


CREATE TABLE Passageiro (
    cpf VARCHAR(11) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    telefone VARCHAR(15),
    bairro VARCHAR(50),
    meio_pagamento VARCHAR(15)
);
INSERT INTO Passageiro (cpf, nome, email, telefone, bairro, meio_pagamento)
VALUES ('10020030010', 'Cintia Cruz', 'cintia.cruz@gmail.com', '51996539278', 'Petropolis', 'pix')

INSERT INTO Passageiro (cpf, nome, email, telefone, bairro, meio_pagamento)
VALUES ('40050060020', 'Ana Castela', 'ana.castela@gmail.com', '51999437207', 'Higienopolis', 'credito')

INSERT INTO Passageiro (cpf, nome, email, telefone, bairro, meio_pagamento)
VALUES ('70080090030', 'Maisa Silva', 'maisasilva01@gmail.com', '11996235241', 'Mont Serrat', 'credito')

INSERT INTO Passageiro (cpf, nome, email, telefone, bairro, meio_pagamento)
VALUES ('15025035040', 'Luan Santana', 'luansant@gmail.com', '45997988264', 'Aldeia do Vale', 'dinheiro')

INSERT INTO Passageiro (cpf, nome, email, telefone, bairro, meio_pagamento)
VALUES ('25035045050', 'Maria Joaquina', 'marijo@gmail.com', '1199294754', 'Alphaville', 'pix')

CREATE TABLE Viagem (
    id NUMBER PRIMARY KEY,
    kms VARCHAR(10),
    carro_codigo NUMBER REFERENCES Carro(codigo),
    passageiro_cpf VARCHAR(11) REFERENCES Passageiro(cpf),
    valor VARCHAR(10)
);

CREATE TABLE Urbana (
    viagem_id NUMBER REFERENCES Viagem(id),
    bairro_partida VARCHAR(20),
    bairro_chegada VARCHAR(20)
);

CREATE TABLE Interurbana (
    viagem_id NUMBER REFERENCES Viagem(id),
    taxa_adicional VARCHAR(20),
    cidade_destino VARCHAR(20)
);

INSERT INTO Viagem (id, kms, carro_codigo, passageiro_cpf, valor)
VALUES (1, '20', 1, '10020030010', '30.00');

INSERT INTO Urbana (viagem_id, bairro_partida, bairro_chegada)
VALUES (1, 'Petropolis', 'Floresta');


INSERT INTO Viagem (id, kms, carro_codigo, passageiro_cpf, valor)
VALUES (2, '15', 2, '40050060020', '25.00');

INSERT INTO Urbana (viagem_id, bairro_partida, bairro_chegada)
VALUES (2, 'Higienopolis', 'Centro Historico');


INSERT INTO Viagem (id, kms, carro_codigo, passageiro_cpf, valor)
VALUES (3, '10', 3, '70080090030', '20.00');

INSERT INTO Urbana (viagem_id, bairro_partida, bairro_chegada)
VALUES (3, 'Mont Serrat', 'Partenon');

INSERT INTO Viagem (id, kms, carro_codigo, passageiro_cpf, valor)
VALUES (4, '150', 1, '25035045050', '100.00');

INSERT INTO Interurbana (viagem_id, taxa_adicional, cidade_destino)
VALUES (4, '10.00', 'Santo Andre');

INSERT INTO Viagem (id, kms, carro_codigo, passageiro_cpf, valor)
VALUES (5, '200', 2, '15025035040', '120.00');

INSERT INTO Interurbana (viagem_id, taxa_adicional, cidade_destino)
VALUES (5, '15.00', 'Goiania');

INSERT INTO Viagem (id, kms, carro_codigo, passageiro_cpf, valor)
VALUES (6, '300', 3, '10020030010', '150.00');

INSERT INTO Interurbana (viagem_id, taxa_adicional, cidade_destino)
VALUES (6, '20.00', 'Torres');

INSERT INTO Viagem (id, kms, carro_codigo, passageiro_cpf, valor)
VALUES (7, '12', 1, '40050060020', '22.00');

INSERT INTO Urbana (viagem_id, bairro_partida, bairro_chegada)
VALUES (7, 'Partenon', 'Sarandi');

INSERT INTO Viagem (id, kms, carro_codigo, passageiro_cpf, valor)
VALUES (8, '18', 2, '15025035040', '28.00');

INSERT INTO Urbana (viagem_id, bairro_partida, bairro_chegada)
VALUES (8, 'Jardim Botanico', 'Anchieta');

INSERT INTO Viagem (id, kms, carro_codigo, passageiro_cpf, valor)
VALUES (9, '250', 3, '25035045050', '130.00');

INSERT INTO Interurbana (viagem_id, taxa_adicional, cidade_destino)
VALUES (9, '12.00', 'Passo Fundo');

INSERT INTO Viagem (id, kms, carro_codigo, passageiro_cpf, valor)
VALUES (10, '5', 1, '40050060020', '15.00');

INSERT INTO Urbana (viagem_id, bairro_partida, bairro_chegada)
VALUES (10, 'Menino Deus', 'Floresta');
