-- Práctica: funciones de ventana en SQL Server (datos inventados)

CREATE DATABASE Practica;
GO
USE Practica;
GO

CREATE TABLE Pedidos (
    Id INT, Cliente VARCHAR(20), Fecha DATE, Monto DECIMAL(10,2)
);
INSERT INTO Pedidos VALUES
(1,'Ana','2026-01-05',100),(2,'Ana','2026-02-10',250),
(3,'Luis','2026-01-20',80),(4,'Luis','2026-03-02',120),
(5,'Luis','2026-03-15',60),(6,'Eva','2026-02-01',300);

-- 1) Pedido más reciente de cada cliente
WITH Numerados AS (
    SELECT Id, Cliente, Fecha, Monto,
           ROW_NUMBER() OVER (PARTITION BY Cliente ORDER BY Fecha DESC) AS Orden
    FROM Pedidos
)
SELECT Id, Cliente, Fecha, Monto FROM Numerados WHERE Orden = 1;

-- 2) Pedido de mayor monto de cada cliente
WITH Numerados AS (
    SELECT Id, Cliente, Fecha, Monto,
           ROW_NUMBER() OVER (PARTITION BY Cliente ORDER BY Monto DESC) AS Orden
    FROM Pedidos
)
SELECT Id, Cliente, Fecha, Monto FROM Numerados WHERE Orden = 1;

-- 3) Monto acumulado por cliente
SELECT Id, Cliente, Fecha, Monto,
       SUM(Monto) OVER (PARTITION BY Cliente ORDER BY Fecha) AS Acumulado
FROM Pedidos
ORDER BY Cliente, Fecha; 
