LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/tabelaclientes.csv'
INTO TABLE tabelaclientes
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/tabelaconta.csv'
INTO TABLE tabelaconta
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/tabeladepartamento.csv'
INTO TABLE tabeladepartamento
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/tabelacolaboradores.csv'
INTO TABLE tabelacolaboradores
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/tabelaemprestimos.csv'
INTO TABLE tabelaemprestimos
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/tabelapagamento.csv'
INTO TABLE tabelapagamento
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/tabelascorecredito.csv'
INTO TABLE tabelascorecredito
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/tabelaclienteconta.csv'
INTO TABLE tabelaclienteconta
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

