SELECT 
    e.Name,
    e.Salary,
    d.DepartmentName
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID
WHERE e.Salary > 50000;
select
	a.FirstName,
	a.lastname,
	b.orderdate
from Customers a
join Orders b on a.Customerid = b.Customerid
where year(b.orderdate) = 2023;
SELECT 
    e.EmployeeName,
    d.DepartmentName
FROM Employees e
LEFT JOIN Departments d ON e.DepartmentID = d.DepartmentID;
SELECT 
    e.SupplierName,
    d.ProductName
FROM Suppliers e
LEFT JOIN Products d ON e.SupplierID = d.ProductID;
SELECT 
    o.OrderID,
    o.OrderDate,
    p.payment_date,
    p.payment_amount
FROM Orders o
FULL OUTER JOIN Payments p ON o.OrderID = p.payerID;
SELECT 
    e.Name,
    m.Name AS ManagerName
FROM Employees e
LEFT JOIN Employees m ON e.ManagerID = m.EmployeeID;
SELECT s.Name
FROM Students s
JOIN Enrollments e ON s.StudentID = e.StudentID
JOIN Courses c ON e.CourseID = c.CourseID
WHERE c.CourseName = 'Математика 101';
SELECT 
    c.FirstName,
    c.LastName,
    o.Quantity
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE o.Quantity > 3;
SELECT 
    Employees.Name, 
    Departments.DepartmentName
FROM Employees
JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID
WHERE Departments.DepartmentName = 'Human Resources';
SELECT 
    Products.ProductID,
    Products.ProductName
FROM Products
LEFT JOIN Sales ON Products.ProductID = Sales.product_id
WHERE Sales.product_id IS NULL;
SELECT p.ProductID, p.ProductName
FROM Products p
LEFT JOIN Sales s ON p.ProductID = s.product_id
WHERE s.product_id IS NULL;
SELECT c.FirstName, c.LastName, COUNT(o.OrderID) AS TotalOrders
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.FirstName, c.LastName;
SELECT e.EmployeeID, e.Name, d.DepartmentID, d.DepartmentName
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID;
SELECT e1.Name AS Employee1, e2.Name AS Employee2, e1.ManagerID
FROM Employees e1
JOIN Employees e2 ON e1.ManagerID = e2.ManagerID
WHERE e1.EmployeeID < e2.EmployeeID;
SELECT o.OrderID, o.OrderDate, c.FirstName, c.LastName
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE YEAR(o.OrderDate) = 2022;
SELECT e.Name, e.Salary, d.DepartmentName
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID
WHERE d.DepartmentName = 'sales' AND e.Salary > 60000;
SELECT o.OrderID, o.OrderDate, p.PaymentDate, p.Amount
FROM Orders o
JOIN Payments p ON o.OrderID = p.OrderID;
SELECT p.ProductID, p.ProductName
FROM Products p
LEFT JOIN OrderDetails od ON p.ProductID = od.ProductID
LEFT JOIN Orders o ON od.OrderID = o.OrderID
WHERE o.OrderID IS NULL;
SELECT 
    Name,
    Salary
FROM Employees e
WHERE Salary > (SELECT AVG(Salary)
FROM Employees
WHERE DepartmentID = e.DepartmentID)
SELECT 
    o.OrderID,
    o.OrderDate
FROM Orders o
LEFT JOIN Payments p ON o.OrderID = p.payerid
WHERE o.OrderDate < '2020-01-01' AND p.payerID IS NULL;
    p.ProductID,
    p.ProductName
FROM Products p
LEFT JOIN Categories c ON p.ProductID = c.CategoryID
WHERE c.CategoryID IS NULL;
SELECT 
    E1.Name AS Employee1,
    E2.Name AS Employee2,
    E1.ManagerID,
    E1.Salary
FROM Employees E1
JOIN Employees E2 
    ON E1.ManagerID = E2.ManagerID 
    AND E1.EmployeeID < E2.EmployeeID
WHERE E1.Salary > 60000 
    AND E2.Salary > 60000;
SELECT 
    E.Name AS EmployeeName,
    D.DepartmentName AS DepartmentName
FROM Employees E
JOIN Departments D ON E.DepartmentID = D.DepartmentID
WHERE D.DepartmentName LIKE 'M%';
SELECT 
    S.ID,
    P.ProductName,
    S.quantity
FROM Sales S
JOIN Products P ON S.Product_ID = P.ProductID
WHERE S.quantity > 500;
SELECT 
    S.CourseID,
    S.Name
FROM Students S
WHERE NOT EXISTS (
        SELECT 1
        FROM Enrollments E
        JOIN Courses C ON E.CourseID = C.CourseID
        WHERE E.StudentID = S.StudentID AND C.CourseName = 'Математика 101'
SELECT 
    S.StudentID,
    S.StudentName
FROM Students S
WHERE S.StudentID NOT IN (
        SELECT E.StudentID
        FROM Enrollments E
        JOIN Courses C ON E.CourseID = C.CourseID
        WHERE C.CourseName = 'Математика 101'
SELECT 
    p.ProductID, 
    p.ProductName, 
    c.CategoryName
FROM Products p
JOIN Categories c ON p.CategoryID = c.CategoryID
WHERE c.CategoryName IN ('Electronics', 'Furniture');
