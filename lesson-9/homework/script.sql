SELECT p.ProductName, s.SupplierName
FROM Products p
CROSS JOIN Suppliers s;
select p.departmentname, t.departmentidname
from Employees p
cross join Departments t
SELECT s.SupplierName, p.ProductName
FROM Products p
JOIN Suppliers sp ON p.ProductID = sp.ProductID
JOIN Suppliers s ON sp.SupplierID = s.SupplierID;
SELECT Customers.customerid, Orders.orderid
FROM Customers
JOIN Orders ON Customers.customerid = Orders.customerid;
SELECT Students.name, Courses.instructor
FROM Students
CROSS JOIN Courses;
SELECT e.EmployeeID, e.Name, e.DepartmentID, d.DepartmentName
FROM Employees e
INNER JOIN Departments d ON e.DepartmentID = d.DepartmentID;
SELECT s.name, e.courseid
FROM Students s
JOIN Enrollments e ON s.studentid = e.studentid;
SELECT o.*
FROM Orders o
INNER JOIN Payments p ON o.OrderID = p.OrderID;
SELECT o.*
FROM Orders o
JOIN Products p ON o.productid = p.productid
WHERE p.price > 100;
SELECT e.name, d.departmentname
FROM Employees e
CROSS JOIN Departments d
WHERE e.departmentid <> d.departmentid;
SELECT o.orderid,
    o.productid,
    o.quantity,
    p.productname,
    p.stockquantity
FROM Orders o
INNER JOIN Products p ON o.productid = p.productid
WHERE o.quantity > p.stockquantity;
SELECT c.firstName, c.lastname, s.ProductID
FROM Customers c
JOIN Sales s ON c.CustomerID = s.CustomerID
WHERE s.SaleAmount >= 500;
SELECT 
    s.Name AS StudentName,
    c.CourseName AS CourseName
FROM Enrollments e
JOIN Students s ON e.StudentId = s.StudentId
JOIN Courses c ON e.CourseId = c.CourseId;
select t.productname, b.suppliername from Products t
join Suppliers b on t.ProductID = b.Supplierid
where suppliername like '%tech%'
SELECT o.orderid, o.totalamount, p.payment_amount
FROM Orders o
JOIN Payments p ON o.orderid = p.orderid
WHERE p.payment_amount < o.totalamount;
SELECT e.EmployeeID,e.Name,d.DepartmentName
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID;
SELECT p.productid, p.productname, c.categoryname
FROM Products p
JOIN Categories c ON p.category = c.categoryid
WHERE c.categoryname IN ('Electronics', 'Furniture');
SELECT s.*
FROM Sales s
JOIN Customers c ON s.customerid = c.customerid
WHERE c.country = 'USA';
