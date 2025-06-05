CREATE TABLE tabelaclientes (
    id_cliente INT PRIMARY KEY,
    nome_cliente VARCHAR(255),
    email VARCHAR(255),
    endereco_cliente VARCHAR(255),
    estado VARCHAR(255)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE tabelaconta (
    id_conta INT PRIMARY KEY,
    tipo VARCHAR(255),
    saldo DECIMAL(10,2)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE tabelaclienteconta (
    id_cliente INT,
    id_conta INT,
    PRIMARY KEY (id_cliente, id_conta)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE tabeladepartamento (
    id_departamento INT PRIMARY KEY,
    nome_departamento VARCHAR(255)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE tabelacolaboradores (
    id_colaborador INT PRIMARY KEY,
    nome VARCHAR(255),
    id_departamento INT
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE tabelaemprestimos (
    id_emprestimo INT PRIMARY KEY,
    id_cliente INT,
    id_colaborador INT,
    valor DECIMAL(10,2),
    status VARCHAR(255)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE tabelapagamento (
    id_pagamento INT PRIMARY KEY,
    id_emprestimo INT,
    data_pagamento DATE,
    valor_pago DECIMAL(10,2),
    forma_pagamento VARCHAR(255)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE tabelascorecredito (
    id_score INT PRIMARY KEY,
    id_cliente INT,
    score INT
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;