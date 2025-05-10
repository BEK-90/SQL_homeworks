SELECT MIN(Price) as MINPRICE
FROM Products
SELECT MAX(SALARY) FROM Employee
SELECT COUNT(*) FROM Customers
SELECT COUNT(DISTINCT CATEGORY) FROM Products
SELECT SUM(saleamount) AS TotalSales
FROM Sales
WHERE productid = 7;
SELECT AVG(AGE) AS AGE
FROM EmployeeS
SELECT DepartmentName, COUNT(*) AS employees_count
FROM Employees
GROUP BY departmentNAME;
SELECT Category, MIN(price) AS eng_past, MAX(price) as eng_yuqorisi
FROM products
GROUP BY Category
SELECT CustomerID, SUM(SALEAMOUNT) AS totalsales
FROM Sales
GROUP BY CustomerID
SELECT DepartmentName
FROM Employees
GROUP BY DepartmentName
HAVING COUNT(*) > 5;
SELECT productID,
    SUM(saleamount) AS total_sales,
    AVG(saleamount) AS average_sales
FROM Sales
GROUP BY productID;
SELECT count(*) as number
FROM employees 
where departmentname= 'HR'
SELECT DepartmentName,
max(SALARY) AS highest,
min(SALARY) AS lowest
FROM employees
group by DepartmentName
SELECT DepartmentName,
avg(SALARY) AS average
FROM employees
group by DepartmentName
SELECT avg(SALARY) AS average,
count(*) as asd
FROM employees
group by DepartmentName
SELECT category
FROM products
GROUP BY category
HAVING AVG(price) > 400;
select Year(saledate) as year, sum(saleamount) as totolsales
from sales
group by YEAR(Saledate)
order by YEAR;
SELECT customerid, COUNT(orderid) AS total_orders
FROM orders
GROUP BY customerid
HAVING COUNT(orderid) >= 3;
select departmentname
from employees
group by departmentname
having avg(salary) >60000;
select category,AVG(price) AS average_price
from Products
group by Category
having avg(price) >150;
select Customerid,SUM(saleamount) AS total_sales
from Sales
group by CustomerID
having avg(Saleamount) > 1500;
select Departmentname, sum(salary) as umuniy, avg(salary) as ortacha
from Employees
group by DepartmentName
having avg(Salary) > 65000;
SELECT customerid,
    SUM(CASE WHEN totalamount> 50 THEN totalamount ELSE 0 END) AS total_sales50,
    MIN(totalamount) AS least_purchase
FROM orders
GROUP BY customerid
SELECT YEAR(orderdate) AS order_year,
    MONTH(orderdate) AS order_month,
    SUM(totalamount) AS total_sales,
    COUNT(DISTINCT productid) AS unique_products_sold
FROM orders
GROUP BY YEAR(orderdate), MONTH(orderdate)
HAVING COUNT(DISTINCT productid) >= 2;
select YEAR(orderdate) as year_1,
max(orderid) as maximal,
min(orderid) as minimalniy
from orders
group by year(orderdate);
