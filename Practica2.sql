SELECT OrderId, C.CustomerID, CompanyName, OrderDate
FROM Customers C, Orders O
WHERE C.CustomerID = O.CustomerID AND O.CustomerID = 'ALFKI'

SELECT OrderId, C.CustomerID, CompanyName, OrderDate
FROM Customers C JOIN Orders O ON C.CustomerID = O.CustomerID
WHERE O.CustomerID = 'ALFKI'

SELECT OrderId, C.CustomerID, CompanyName, OrderDate
FROM Customers C 
	JOIN Orders O ON C.CustomerID = O.CustomerID
	JOIN Employees E ON O.EmployeeID = E.EmployeeID
WHERE C.Country = 'Spain' AND O.EmployeeID = 5

SELECT E1.EmployeeID, E1.FirstName ||' '|| E1.LastName As Empleado,E2.FirstName ||' '|| E2.LastName As Jefe
FROM Employees E1 JOIN Employees E2 ON E2.EmployeeID = E1.ReportsTo
