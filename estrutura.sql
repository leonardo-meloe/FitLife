CREATE TABLE gerente (
    cpf CHAR(11) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    salario NUMERIC(10, 2) NOT NULL
);

CREATE TABLE telefone_gerente (
    fk_cpf CHAR(11),
    telefone VARCHAR(20),
    PRIMARY KEY (fk_cpf, telefone),
    FOREIGN KEY (fk_cpf) REFERENCES gerente(cpf) ON DELETE CASCADE
);

CREATE TABLE unidade (
    id_unidade SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    ruas VARCHAR(150), 
    numero INT,
    bairro VARCHAR(50),
    cep CHAR(9),
    fk_cpf CHAR(11),
    FOREIGN KEY (fk_cpf) REFERENCES gerente(cpf) ON DELETE SET NULL
);

CREATE TABLE aluno (
    id_matricula SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_nasc DATE,
    cpf CHAR(11) UNIQUE NOT NULL,
    fk_id_unidade INT,
    FOREIGN KEY (fk_id_unidade) REFERENCES unidade(id_unidade) ON DELETE SET NULL
);

CREATE TABLE armario (
    id_armario SERIAL PRIMARY KEY,
    estado_conservacao VARCHAR(50),
    numero_armario INT NOT NULL,
    fk_matricula INT UNIQUE,
    FOREIGN KEY (fk_matricula) REFERENCES aluno(id_matricula) ON DELETE SET NULL
);

CREATE TABLE instrutores (
    cref VARCHAR(30) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE telefone_instrutor (
    fk_cref VARCHAR(30),
    telefone VARCHAR(20),
    PRIMARY KEY (fk_cref, telefone),
    FOREIGN KEY (fk_cref) REFERENCES instrutores(cref) ON DELETE CASCADE
);

CREATE TABLE trabalha (
    fk_cref VARCHAR(30),
    fk_id_unidade INT,
    PRIMARY KEY (fk_cref, fk_id_unidade),
    FOREIGN KEY (fk_cref) REFERENCES instrutores(cref) ON DELETE CASCADE,
    FOREIGN KEY (fk_id_unidade) REFERENCES unidade(id_unidade) ON DELETE CASCADE
);