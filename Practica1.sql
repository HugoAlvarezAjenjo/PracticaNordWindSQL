-- Averiguar los empleados de EEUU
SELECT FirstName || ' ' || LastName AS Name, City, Region AS [Geographic area]
FROM Employees 
WHERE Country = 'USA'
ORDER BY LastName ASC

-- Averiguar los clientes al sur de europa
SELECT DISTINCT Region FROM Customers --Miro los que no son de europa
SELECT * FROM Customers WHERE Region = 'Southern Europe'

--Seleccionar los que son de europa ya sea cualquier cosa (north south central, etc)
SELECT * 
FROM Customers 
WHERE Region LIKE '%Europe%' 
ORDER BY Region


--Sacar los que tienen fax
SELECT * 
FROM Customers
WHERE fax IS NOT NULL AND Region LIKE '%Europe%'


--Empleados contratados en el primer trimestre de 2014

SELECT * 
FROM Employees
--WHERE HireDate >= '2014-01-01' AND HireDate <= '2014-03-31'
WHERE HireDate BETWEEN '2014-01-01' AND '2014-03-31'


--Seleccionar productos que su categoria sea 2 (Condimentos)
SELECT * 
FROM Products
WHERE CategoryID = 2