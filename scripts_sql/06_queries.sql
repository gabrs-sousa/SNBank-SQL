
-- QUERIES – PROJETO SN BANK

-- Listar todos os clientes que moram no estado de SP.
SELECT * FROM tabelaclientes
WHERE estado = 'SP';

-- Mostrar todos os empréstimos com valor acima de R$ 2000.
SELECT * FROM tabelaemprestimos
WHERE valor > 2000;

-- Listar os pagamentos realizados por boleto.
SELECT * FROM tabelapagamento
WHERE forma_pagamento = 'Boleto';

-- FILTROS COM CLÁUSULAS

-- Mostrar os empréstimos com status 'Pago' e valor acima de R$ 1500.
SELECT * FROM tabelaemprestimos
WHERE status = 'Pago' AND valor > 1500;

-- Listar os clientes que possuem score de crédito inferior a 400.
SELECT * FROM tabelascorecredito
WHERE score < 400;

-- Trazer os pagamentos realizados entre 01/03/2024 e 01/04/2024.
SELECT * FROM tabelapagamento
WHERE data_pagamento BETWEEN '2024-03-01' AND '2024-04-01';

-- JOINS

-- Listar o nome dos clientes junto com o tipo de conta que possuem.
SELECT tabelaclientes.nome_cliente, tabelaconta.tipo
FROM tabelaclientes
JOIN tabelaclienteconta ON tabelaclientes.id_cliente = tabelaclienteconta.id_cliente
JOIN tabelaconta ON tabelaclienteconta.id_conta = tabelaconta.id_conta;

-- Relacionar cada empréstimo ao cliente e ao colaborador responsável.
SELECT tabelaemprestimos.id_emprestimo, tabelaclientes.nome_cliente, tabelacolaboradores.nome
FROM tabelaemprestimos
JOIN tabelaclientes ON tabelaemprestimos.id_cliente = tabelaclientes.id_cliente
JOIN tabelacolaboradores ON tabelaemprestimos.id_colaborador = tabelacolaboradores.id_colaborador;

-- Mostrar os pagamentos com nome do cliente e valor total pago.
SELECT tabelapagamento.id_pagamento, tabelaclientes.nome_cliente, tabelapagamento.valor_pago
FROM tabelapagamento
JOIN tabelaemprestimos ON tabelapagamento.id_emprestimo = tabelaemprestimos.id_emprestimo
JOIN tabelaclientes ON tabelaemprestimos.id_cliente = tabelaclientes.id_cliente;

-- CREATE

-- Criar uma tabela chamada clientes_vip com os clientes cujo saldo seja superior a R$ 10.000.
CREATE TABLE clientes_vip AS
SELECT tabelaclientes.*
FROM tabelaclientes
JOIN tabelaclienteconta ON tabelaclientes.id_cliente = tabelaclienteconta.id_cliente
JOIN tabelaconta ON tabelaclienteconta.id_conta = tabelaconta.id_conta
WHERE tabelaconta.saldo > 10000;

SELECT * FROM clientes_vip;

-- Criar uma tabela chamada emprestimos_em_aberto com todos os empréstimos cujo status seja 'Pendente' ou 'Atrasado'.
CREATE TABLE emprestimos_em_aberto AS
SELECT * FROM tabelaemprestimos
WHERE status IN ('Negado', 'Atrasado');

SELECT * FROM emprestimos_em_aberto;
