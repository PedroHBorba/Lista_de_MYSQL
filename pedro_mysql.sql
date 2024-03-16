-- Exercicio 1--

create database empresa;
use empresa ;

	CREATE TABLE Vendedores (
    Nome VARCHAR(50),
    Numero INT,
    Idade INT,
    Salario DECIMAL(10, 2)
);

INSERT INTO Vendedores (Nome, Numero, Idade, Salario) VALUES
('João', 1, 30, 3000.00),
('Maria', 2, 25, 2500.00),
('Carlos', 3, 35, 3000.00);

	CREATE TABLE Clientes (
    Nome VARCHAR(50),
    Numero INT,
    Cidade VARCHAR(50),
    Tipo VARCHAR(20)
);

INSERT INTO Clientes (Nome, Numero, Cidade, Tipo) VALUES
('Ana', 1, 'São Paulo', 'Pessoa Física'),
('Pedro', 2, 'Rio de Janeiro', 'Pessoa Física'),
('Empresa ABC', 3, 'Belo Horizonte', 'Pessoa Jurídica'),
('Joana', 4, 'Brasília', 'Pessoa Física');

CREATE TABLE Pedidos (
	Nome_Pedidos VARCHAR(100),
    Numero_Pedido INT,
    Numero_Cliente INT,
    Numero_Vendedor INT,
    Quantidade_Itens INT,
    Valor_Total DECIMAL(10, 2)
);


INSERT INTO Pedidos  (Nome_Pedidos,Numero_Pedido, Numero_Cliente, Numero_Vendedor, Quantidade_Itens, Valor_Total) VALUES
("Industria", 1, 1, 1, 5, 1500.00),   
("telefone",2, 2, 2, 3, 900.00),  
("telefone", 3, 3, 3, 8, 2400.00),
("notebook" ,4, 4, 1, 2, 600.00);  

select * from vendedores;

SELECT DISTINCT V.Nome AS Nome_Vendedor
FROM Vendedores V
JOIN Pedidos P ON V.Numero = P.Numero_Vendedor;

SELECT V.Nome AS Nome_Vendedor
FROM Vendedores V
LEFT JOIN Pedidos P ON V.Numero = P.Numero_Vendedor
WHERE P.Numero_Pedido IS NULL;

SELECT V.Nome AS Nome_Vendedor, C.Nome AS Nome_Cliente
FROM Pedidos P
JOIN Vendedores V ON P.Numero_Vendedor = V.Numero
JOIN Clientes C ON P.Numero_Cliente = C.Numero
WHERE P.Nome_Pedidos = 'Industria';

-- alter table pedidos add column Nome_Pedidos int; --

SELECT DISTINCT C.Tipo
FROM Pedidos P
JOIN Vendedores V ON P.Numero_Vendedor = V.Numero
JOIN Clientes C ON P.Numero_Cliente = C.Numero
WHERE V.Nome = 'João';	

SELECT DISTINCT C.Nome, C.Tipo
FROM Pedidos P
JOIN Clientes C ON P.Numero_Cliente = C.Numero
WHERE P.Valor_Total > 5000.00;




