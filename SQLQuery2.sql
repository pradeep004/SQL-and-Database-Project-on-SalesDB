USE salesdb
SELECT c.CustomerID, c.FirstName, c.MiddleInitial, c.LastName
FROM Customers c
WHERE c.FirstName LIKE 'a%' AND
c.MiddleInitial='A'
GO   