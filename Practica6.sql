SELECT
Employees.FirstName || ' ' || Employees.LastName AS Comercial,
count(*) AS 'Pedidos Totales',
count(ShippedDate) AS 'Pedidos Ya Enviados',
Shippers.CompanyName AS Transportista,
min(ShippedDate) AS 'Fecha Min',
max(ShippedDate) AS 'Fecha Max',
sum(Freight) AS 'Peso Total',
avg(Freight) AS 'Peso Promedio'

FROM Orders
INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID 
INNER JOIN Shippers ON ORDERS.ShipVia = Shippers.ShipperID

WHERE Employees.ReportsTo IS NOT NULL
GROUP BY Comercial, Transportista

HAVING 'Peso Total' > 3000 AND 'Pedidos Ya Enviados' > 40
ORDER BY Comercial