SELECT OrderId, C.CustomerID, CompanyName, OrderDate
FROM Customers C LEFT JOIN Orders O ON C.CustomerID = O.CustomerID
WHERE O.OrderId IS NULL