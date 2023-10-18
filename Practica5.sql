SELECT DISTINCT Country FROM Customers
UNION
SELECT DISTINCT Country FROM Orders
/*
UNION --> Une los que estan entre ambas tablas y elimina los que estan repetidas (No hace falta el DISTINCT)
INTERSECT --> Los comunes a ambos conjuntos
ALL --> Lo mismo que union pero da igual que esten repetidos
EXCEPT --> Los que no estan en comun