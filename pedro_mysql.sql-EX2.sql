-- Exercicio 2 
CREATE DATABASE Escola;

CREATE TABLE ALUNO (
    aluno_id INT PRIMARY KEY,
    nome VARCHAR(100),
    curso VARCHAR(100),
    nivel VARCHAR(50),
    idade INT
);


INSERT INTO ALUNO (aluno_id, nome, curso, nivel, idade) VALUES
(1, 'Maria Silva', 'Engenharia Civil', 'Graduação', 22),
(2, 'João Santos', 'Administração', 'Graduação', 20),
(3, 'Ana Souza', 'Medicina', 'Graduação', 23),
(4, 'Pedro Oliveira', 'Direito', 'Graduação', 21),
(5, 'Lucas Fernandes', 'Ciência da Computação', 'Graduação', 24),
(6, 'Juliana Costa', 'Psicologia', 'Graduação', 22);


CREATE TABLE TURMA (
    turma_id INT PRIMARY KEY,
    nometurma VARCHAR(100),
    sala VARCHAR(50),
    horario VARCHAR(50)
);


CREATE TABLE MATRICULA (
    matricula_id INT PRIMARY KEY,
    aluno_id INT,
    turma_id INT,
    nota_1 DECIMAL(5, 2),
    nota_2 DECIMAL(5, 2),
    nota_3 DECIMAL(5, 2),
    nota_final DECIMAL(5, 2),
    nr_faltas INT,
    FOREIGN KEY (aluno_id) REFERENCES ALUNO(aluno_id),
    FOREIGN KEY (turma_id) REFERENCES TURMA(turma_id)
);

SELECT DISTINCT NOME FROM ALUNO;

SELECT  ALUNO_ID, NOME FROM Aluno;

SELECT M.matricula_id
FROM MATRICULA M
LEFT JOIN TURMA T ON M.turma_id = T.turma_id
WHERE T.turma_id IS NULL;

SELECT M.aluno_id
FROM MATRICULA M
JOIN TURMA T ON M.turma_id = T.turma_id
WHERE T.nometurma = '30';

 SELECT T.horario
FROM ALUNO A
JOIN MATRICULA M ON A.aluno_id = M.aluno_id
JOIN TURMA T ON M.turma_id = T.turma_id
WHERE A.nome = 'Dick Vigarista';

SELECT A.nome
FROM ALUNO A
JOIN MATRICULA M ON A.aluno_id = M.aluno_id
JOIN TURMA T ON M.turma_id = T.turma_id
WHERE T.turma_id = 30;

SELECT A.nome
FROM ALUNO A
WHERE A.aluno_id NOT IN (
    SELECT M.aluno_id
    FROM MATRICULA M
    JOIN TURMA T ON M.turma_id = T.turma_id
    WHERE T.turma_id = 30
);

SELECT DISTINCT T.nometurma
FROM MATRICULA M
JOIN TURMA T ON M.turma_id = T.turma_id
WHERE M.nota_final > 8;




