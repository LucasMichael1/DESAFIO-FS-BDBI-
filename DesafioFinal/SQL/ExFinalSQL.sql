CREATE DATABASE dados3;
USE dados3;

CREATE TABLE Cliente (
    id_cliente INT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    telefone VARCHAR(20)
);

CREATE TABLE Produto (
    id_produto INT PRIMARY KEY,
    nome VARCHAR(100),
    descricao VARCHAR(255),
    preco DECIMAL(10, 2)
);

CREATE TABLE Pedido (
    id_pedido INT PRIMARY KEY,
    id_cliente INT,
    id_produto INT,
    data_pedido DATE,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
    FOREIGN KEY (id_produto) REFERENCES Produto(id_produto)
);


ALTER TABLE Cliente
ADD COLUMN endereco VARCHAR(255);


INSERT INTO Cliente (id_cliente, nome, email, telefone, endereco)
VALUES (1, 'João Silva', 'joao@example.com', '123456789', 'Rua A, 123'),
       (2, 'Maria Santos', 'maria@example.com', '987654321', 'Avenida B, 456'),
       (3, 'José Oliveira', 'jose@example.com', '555555555', 'Travessa C, 789');

INSERT INTO Produto (id_produto, nome, descricao, preco)
VALUES (1, 'Camiseta', 'Camiseta branca tamanho M', 29.99),
       (2, 'Calça Jeans', 'Calça jeans azul tamanho 42', 59.99),
       (3, 'Tênis', 'Tênis esportivo preto tamanho 40', 79.99);

INSERT INTO Pedido (id_pedido, id_cliente, id_produto, data_pedido)
VALUES (1, 1, 1, '2024-03-01'),
       (2, 2, 2, '2024-03-02'),
       (3, 3, 3, '2024-03-03');

SELECT * FROM Cliente;
SELECT * FROM Produto;
SELECT * FROM Pedido;