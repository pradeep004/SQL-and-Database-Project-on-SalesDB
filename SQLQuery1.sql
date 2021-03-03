USE salesdb
GO
--Retriving all Products
SELECT p.*
FROM Products p

GO

SELECT c.*
FROM Customers c
GO
---USE OF ORDER By
SELECT p.ProductID,p.Name,p.Price
FROM Products p
ORDER BY p.Name DESC

GO
---USE OF Filter
SELECT p.ProductID,p.Name,p.Price
FROM PRoducts p
WHERE p.Name = 'Road-150 Red, 48'

GO
--USE of Like
SELECT p.ProductID,p.Name,p.Price
FROM Products p
WHERE p.Name LIKE 'c%' AND p.Price > 100

SELECT c.CustomerID, c.FirstName, c.MiddleInitial, c.LastName
FROM Customers c
WHERE c.FirstName LIKE 'a%' AND c.MiddleInitial='A'
GO   

--JOINS Query 
SELECT  c.FirstName,c.LastName, e.FirstName,p.Name,s.Quantity
FROM Customers c
INNER JOIN Sales s
ON c.CustomerID = s.CustomerID
INNER JOIN Products p
ON p.ProductID = s.ProductID
INNER JOIN Employees e
ON e.EmployeeID = s.SalesPersonID
WHERE c.FirstName = 'Aaron' 
ORDER BY s.Quantity

GO
--USE OF JOINS
SELECT TOP 1000 e.EmployeeID,e.FirstName,s.ProductID,s.Quantity
FROM Employees e
INNER JOIN Sales s
ON e.EmployeeID=s.SalesPersonID

How many times customer has purchased from the shop. Detail is fetched on the basis of FirstName.
GO
--USE OF GROUP BY
select No_of_Puchases=count(CustomerID), FirstName from Customers group by FirstName order by FirstName;

