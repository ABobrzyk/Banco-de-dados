Selects sql; tarefa 5:

a) SELECT DISTINCT C.codigo
FROM Carros C
INNER JOIN Viagens V ON C.codigo = V.carro_codigo
INNER JOIN Urbana U ON V.id = U.viagem_id
WHERE U.bairro_partida = 'Floresta';

b) SELECT DISTINCT P.nome AS nome_passageiro, V.carro_codigo
FROM Passageiros P
INNER JOIN Viagens V ON P.cpf = V.passageiro_cpf
INNER JOIN Urbana U ON V.id = U.viagem_id
WHERE P.bairro = U.bairro_partida;

c) SELECT P.cpf, P.nome, SUM(V.kms) AS total_kilometros
FROM Passageiros P
INNER JOIN Viagens V ON P.cpf = V.passageiro_cpf
GROUP BY P.cpf, P.nome;

#foram feitos apenas os comandos para o banco oracle. Não consegui do MongoDB.