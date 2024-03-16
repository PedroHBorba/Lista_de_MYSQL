CREATE DATABASE EMPRESA01;

CREATE TABLE EMPREGADO (
    idemp INT PRIMARY KEY,
    nomeemp VARCHAR(100),
    aniversario DATE,
    enderecoemp VARCHAR(255),
    sexoemp CHAR(1),
    salarioemp DECIMAL(10, 2),
    nrdep INT
);

CREATE TABLE DEPARTAMENTO (
    nrdep INT PRIMARY KEY,
    nomedep VARCHAR(100),
    idgerente INT,
    horario VARCHAR(50)
);
DROP TABLE DEPARTAMENTO;
DROP TABLE LOCALIZACAO;
DROP TABLE PROJETO;
DROP TABLE TRABALHA_EM;

CREATE TABLE LOCALIZACAO (
    localizacao VARCHAR(100) PRIMARY KEY,
    nrdep INT ,
    FOREIGN KEY (nrdep) REFERENCES DEPARTAMENTO(nrdep)
);

CREATE TABLE TRABALHA_EM (
    idemp INT ,
    nrprojeto INT,
    horas DECIMAL(5, 2),
    PRIMARY KEY (idemp, nrprojeto),
    FOREIGN KEY (idemp) REFERENCES EMPREGADO(idemp),
    FOREIGN KEY (nrprojeto) REFERENCES PROJETO(nrproj)
);

CREATE TABLE PROJETO (
    nrproj INT PRIMARY KEY,
    nomeproj VARCHAR(100),
    nrdep INT ,
    FOREIGN KEY (nrdep) REFERENCES DEPARTAMENTO(nrdep)
);

CREATE TABLE DEPENDENTE (
    iddepende INT PRIMARY KEY,
    idemp INT,
    nomedep VARCHAR(100),
    sexodep CHAR(1),
    aniversariodep DATE,
    parentesco VARCHAR(50),
    FOREIGN KEY (idemp) REFERENCES EMPREGADO(idemp)
);

SELECT E.nomeemp, E.enderecoemp
FROM EMPREGADO E
JOIN DEPARTAMENTO D ON E.nrdep = D.nrdep
WHERE D.nomedep = 'Compras';

SELECT 
    P.nrproj AS 'Número do Projeto',
    P.nrdep AS 'Número do Departamento',
    D.idgerente AS 'Identidade do Gerente',
    E.enderecoemp AS 'Endereço do Gerente',
    E.aniversario AS 'Data de Aniversário do Gerente'
FROM 
    PROJETO P
JOIN 
    DEPARTAMENTO D ON P.nrdep = D.nrdep
JOIN 
    EMPREGADO E ON D.idgerente = E.idemp
WHERE 
    L.localizacao = 'Rio de Janeiro';
    
SELECT DISTINCT PR.nomeproj AS 'Nome do Projeto'
FROM EMPREGADO E
JOIN TRABALHA_EM TE ON E.idemp = TE.idemp
JOIN PROJETO PR ON TE.nrproj = PR.nrproj
WHERE E.nomeemp = 'João';





