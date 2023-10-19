SELECT OrderId, C.CustomerID, CompanyName, OrderDate
FROM Customers C LEFT JOIN Orders O ON C.CustomerID = O.CustomerID
WHERE O.OrderId IS NULL

SELECT CustomerID, CompanyName FROM Customers
WHERE CustomerID NOT IN (SELECT DISTINCT CustomerID FROM Orders)--Cojo los clientes no repetidos que tienen pedidos

SELECT CustomerID, CompanyName FROM Customers C
WHERE (SELECT count(CustomerID) FROM Orders O WHERE O.CustomerID = C.CustomerID) = 0


--EXPLAIN QUERY PLAN
SELECT CustomerID, CompanyName FROM Customers C
WHERE (SELECT OrderId FROM Orders O
		WHERE O.CustomerID = C.CustomerID) IS NULL
		

--Cuanto dinero se han gastado nuestros clientes en un producto determinado
SELECT sum((UnitPrice*(1-Discount))*Quantity) AS Beneficio
FROM OrderDetails
WHERE ProductID = 1


SELECT P.ProductName AS "Nombre del producto", P.UnitPrice AS "Precio por unidad",
(SELECT sum((UnitPrice*(1-Discount))*Quantity) FROM OrderDetails OD WHERE OD.ProductID = P.ProductID) AS Ganancias
FROM Products P



