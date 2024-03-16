create database turma;

 create table turma01 (
  ts1_id int auto_increment PRIMARY KEY,
  ano varchar(3)
 
 );
 
 CREATE TABLE turma02 (
 ts2_id INT AUTO_INCREMENT PRIMARY KEY,
 ano varchar(3)
 
 );
 
 CREATE TABLE turma03 (
 ts3_id INT auto_increment PRIMARY KEY,
 ano varchar(3)
 );
 drop table turma01,turma02,turma03;
 
 insert into turma01(ano) values
 ("3A");
 insert into turma02(ano) values
 ("3B");
 insert into turma03(ano) values
 ("3C");
 
 INSERT INTO aluno_3A	(aluno3A_id, nome, curso, nivel, idade) VALUES
(1, 'Maria Silva', 'Ciência da Computação', 'Graduação', 22),
(2, 'Pedro Santos', 'Engenharia Civil', 'Graduação', 21),
(3, 'Ana Oliveira', 'Administração', 'Graduação', 20),
(4, 'João Souza', 'Direito', 'Graduação', 23),
(5, 'Lucas Costa', 'Medicina', 'Graduação', 24),
(6, 'Julia Fernandes', 'Ciências Contábeis', 'Graduação', 22),
(7, 'Marcos Pereira', 'Engenharia Elétrica', 'Graduação', 20),
(8, 'Carla Lima', 'Engenharia de Produção', 'Graduação', 21),
(9, 'Rafaela Almeida', 'Psicologia', 'Graduação', 23);

INSERT INTO aluno_3B(aluno3B_id, nome, curso, nivel, idade) VALUES
(11, 'Fernanda Oliveira', 'Ciência da Computação', 'Graduação', 21),
(12, 'Gustavo Santos', 'Engenharia Civil', 'Graduação', 22),
(13, 'Amanda Costa', 'Administração', 'Graduação', 20),
(14, 'Felipe Souza', 'Direito', 'Graduação', 24),
(15, 'Isabela Fernandes', 'Medicina', 'Graduação', 23);


INSERT INTO aluno_3C	(aluno3C_id, nome, curso, nivel, idade) VALUES
(16, 'Rodrigo Pereira', 'Engenharia de Produção', 'Graduação', 22),
(17, 'Mariana Almeida', 'Psicologia', 'Graduação', 23),
(18, 'Camila Martins', 'Arquitetura', 'Graduação', 21),
(19, 'Luiz Silva', 'Engenharia Elétrica', 'Graduação', 24),
(20, 'Letícia Lima', 'Ciências Contábeis', 'Graduação', 20);


create table aluno_3A(
 aluno3A_id	int,
  nome	varchar(30),
  curso	varchar(50),
  nivel	varchar(10),
  idade double,
  nota1 double,
  nota2 double
  );
  
  create table aluno_3B(
 aluno3B_id	int ,
  nome	varchar(30),
  curso	varchar(50),
  nivel	varchar(10),
  idade double,
   nota1 double,
  nota2 double
  );
drop table aluno_3A;
drop table aluno_3B;
drop table aluno_3C;
  
  create table aluno_3C(
 aluno3C_id	int ,
  nome	varchar(30),
  curso	varchar(50),
  nivel	varchar(10),
  idade double,
   nota1 double,
  nota2 double
  );
  
  
INSERT INTO aluno_3A	(aluno3A_id, nota1, nota2) VALUES
(1, 8.5, 7.9), 
(2, 9.2, 8.7), 
(3, 7.0, 6.5),  
(4, 8.0, 7.5), 
(5, 9.5, 9.0), 
(6, 7.8, 8.2), 
(7, 8.3, 7.1), 
(8, 9.0, 8.5), 
(9, 7.5, 8.0);

INSERT INTO aluno_3B	 (aluno3B_id, nota1, nota2) VALUES
(11, 8.7, 7.5),  -- Notas para o aluno 11 (Fernanda Oliveira)
(12, 9.0, 8.9),  -- Notas para o aluno 12 (Gustavo Santos)
(13, 7.8, 7.0),  -- Notas para o aluno 13 (Amanda Costa)
(14, 8.5, 8.0),  -- Notas para o aluno 14 (Felipe Souza)
(15, 9.2, 9.5);  -- Notas para o aluno 15 (Isabela Fernandes)
;


INSERT INTO aluno_3C	 (aluno3C_id, nota1, nota2) VALUES
(16, 8.0, 7.2),  -- Notas para o aluno 16 (Rodrigo Pereira)
(17, 7.5, 8.5),  -- Notas para o aluno 17 (Mariana Almeida)
(18, 9.3, 9.8),  -- Notas para o aluno 18 (Camila Martins)
(19, 8.6, 7.7),  -- Notas para o aluno 19 (Luiz Silva)
(20, 9.1, 8.9);  -- Notas para o aluno 20 (Letícia Lima)
;



 
 
 