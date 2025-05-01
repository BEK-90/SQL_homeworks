SELECT ProductName AS Name
FROM Products;
SELECT * FROM CUSTOMERS AS CLIENT;
SELECT ProductName FROM Products
UNION
SELECT ProductName FROM Products_Discounted
SELECT ProductID, ProductName
FROM Products
INTERSECT
SELECT ProductID, ProductName
FROM Products_Discounted;
SELECT DISTINCT CONCAT(FirstName, ' ', LastName) AS CustomerName, Country
FROM Customers;
SELECT ProductName, Price, CASE 
    WHEN Price > 1000 THEN 'High' ELSE 'Low' END AS SIZE
FROM Products;
SELECT *, IIF(StockQuantity>100, 'YES','NO') AS STATUS FROM Products_Discounted
SELECT ProductName FROM PRODUCTS
UNION
SELECT ProductName FROM Products_Discounted
SELECT * FROM PRODUCTS
EXCEPT
SELECT * FROM Products_Discounted
SELECT *, IIF(PRICE>1000,'Expensive','Affordable') AS STATUS FROM PRODUCTS
SELECT * FROM Employees
WHERE Age < 25 or Salary > 60000
update Employees set Salary = Salary * 1.1  where (DepartmentName = 'HR' or EmployeeID = 5)
SELECT *, case when sale_amount > 500 then 'Top Tier'
          when sale_amount BETWEEN 200 AND 500 then 'Mid Tier'
		  else 'Low Tier' END AS BEK
FROM sales
SELECT customerid,quantity,
    CASE 
        WHEN quantity = 1 THEN '3%'
        WHEN quantity > 1 AND quantity <= 3 THEN '5%' ELSE '7%'
    END AS discount_percentage FROM orders;
