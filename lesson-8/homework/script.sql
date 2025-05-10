select category, count(*) as totalnumber
from Products
group by category
SELECT AVG(price) AS average_price
FROM Products
WHERE category = 'Electronics';
select * FROM Customers
where city like 'L%'
select * FROM Products
where productname like '%er'
select * FROM Customers
where country like '%A'
SELECT MAX(price) AS highest_price
FROM Products;
SELECT ProductID, ProductName, StockQuantity,
    CASE WHEN StockQuantity < 30 THEN 'Low Stock'
        ELSE 'Sufficient' END AS StockStatus
FROM Products;
select country, count(*) as total_number
from Customers
group by country
select max(quantity) as maxquantity,
min(quantity) as minquantity
from Orders
SELECT DISTINCT CustomerID
FROM Orders
WHERE OrderDate >= '2023-01-01' AND OrderDate < '2023-02-01'AND OrderID NOT IN ( SELECT OrderID FROM Invoices);
select productname from Products
union all
select productname from Products_Discounted
select productname from Products
union
select productname from Products_Discounted
SELECT productname,
    CASE WHEN price < 100 THEN 'Low'
        WHEN price BETWEEN 100 AND 500 THEN 'Mid'
        ELSE 'High' END AS pricegroup
FROM Products;
SELECT productname,
    CASE WHEN price < 100 THEN 'Low'
        WHEN price BETWEEN 100 AND 500 THEN 'Mid'
        ELSE 'High' END AS pricegroup
FROM Products;
SELECT * INTO Population_Each_Year
FROM city_population AS SourceTable
PIVOT (SUM(Population)FOR Year IN ([2012], [2013])) AS PivotTable;
select PRODUCTid,sum(SaleAmount) as total_sales
from sales 
group by PRODUCTid
select PRODUCTname
from Products
where PRODUCTname like '%oo%'
SELECT *INTO Population_Each_City FROM City_Population AS SourceTable
PIVOT (SUM(Population) FOR district_name IN ([Bektemir], [Chilonzor], [Yakkasaroy])
) AS PivotTable;
SELECT top 3 CustomerID, SUM(Totalamount) AS TotalSpent
FROM Invoices
GROUP BY CustomerID
ORDER BY TotalSpent DESC
SELECT Year,
    MAX(CASE WHEN City = 'Bektemir' THEN Population END) AS Bektemir,
    MAX(CASE WHEN City = 'Chilonzor' THEN Population END) AS Chilonzor,
    MAX(CASE WHEN City = 'Yakkasaroy' THEN Population END) AS Yakkasaroy
FROM City_Population
GROUP BY Year
ORDER BY Year;
SELECT p.ProductName,COUNT(s.SaleID) AS TimesSold
FROM Products p
JOIN Sales s ON p.ProductID = s.ProductID
GROUP BY p.ProductName;
SELECT city_name, district_name, population
FROM Population_Each_City
UNPIVOT (population FOR district_name IN ([Bektemir], [Chilonzor], [Yakkasaroy])) AS UnpivotTable;
