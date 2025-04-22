1--quickly load large data such as a .txt, .csv
2--CSV,TXT,HTML,JSON
3--CREATE TABLE Products (
--ProductID INT PRIMARY KEY,
--ProductName VARCHAR(100),
--CategoryID INT,
--Price DECIMAL(10, 2)
--);
SELECT * FROM PRODUCTS
4--INSERT INTO PRODUCTS (PRODUCTID, PRODUCTNAME, CATEGORYID, PRICE) 
--VALUES
--(1,'CAR',15.26,20),
--(2,'MONITOR',55.30,40),
(3,'NOUTBOK',17.99,100);
5--(NULL)not zero and not an empty string,(NOT NULL)this is a constraint
--CREATE TABLE Employees (
--    ID INT PRIMARY KEY,
--    Name VARCHAR(100) NOT NULL,
--    Phone VARCHAR(20) NULL
--);
--6 ALTER TABLE Products
--ADD CONSTRAINT productname UNIQUE (ProductName);
--7-double is used -- means that everything that comes after it on the line is a comment
--8--CREATE TABLE CATEGORIES(
--CATEGORYID INT PRIMARY KEY,
--CATIGORYNAME VARCHAR(100) UNIQUE
--);
9--Column Name INT IDENTITY initial_value step
10--CREATE TABLE products(
--ID INT
--,TYPE VARCHAR(20)
--,NAME VARCHAR(20)
--,PRICE VARCHAR(30)
--,QUANTITY CHAR(10)
--);
--BULK INSERT PRODUCTS
--FROM "C:\Users\Pavilion\Desktop\products.txt"
--WITH(
--FIRSTROW=2,
--FIELDTERMINATOR=',',
--ROWTERMINATOR='\n'
--);
DROP TABLE PRODUCTS
SELECT * FROM CATEGORIES
--11--CREATE TABLE Categories (
--CategoryID INT PRIMARY KEY,
--CategoryName VARCHAR(100)
--);
--CREATE TABLE Products (
--ProductID INT PRIMARY KEY,
--ProductName VARCHAR(100),
--CategoryID INT,
--Price DECIMAL(10, 2),
--FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
--);
--ALTER TABLE Products
--ADD CONSTRAINT FK_Products_Categories
--FOREIGN KEY (CategoryID)
--REFERENCES Categories(CategoryID);
--12PRIMARY KEY (Does not allow NULL) - Allows NULL
--CREATE TABLE Users (
--FIRSTID INT PRIMARY KEY,
--LASTNAME VARCHAR(100)
--);
--CREATE TABLE employees (
--employee_id INT PRIMARY KEY,
--email VARCHAR(100) UNIQUE,
--phone_number VARCHAR(20) UNIQUE
--);
--13 CREATE TABLE Products (
--ProductID INT PRIMARY KEY,
--ProductName VARCHAR(100),
--Price DECIMAL(10, 2) CHECK (Price > 0)
--);
--14ALTER TABLE Products
--ADD Stock INT NOT NULL;
--15SELECT ProductID, ProductName, ISNULL(Stock, 0) AS Stock
--FROM Products;
--16 CREATE TABLE Employees (
--    EmployeeID INT PRIMARY KEY,
--    Name NVARCHAR(100),
--    DepartmentID INT,
--    CONSTRAINT FK_Employees_Departments FOREIGN KEY (DepartmentID)
--        REFERENCES Departments(DepartmentID)
--17 CREATE TABLE CUSTOMERS (
--CustomerID INT PRIMARY KEY,
--NAME NVARCHAR(100) NOT NULL,
--AGE INT NOT NULL,
--CONSTRAINT chk_Customer_Age CHECK (Age >= 18)
--);
--18CREATE TABLE Products (
--ProductID INT IDENTITY(100, 10) PRIMARY KEY,
--ProductName NVARCHAR(100) NOT NULL,
--Price DECIMAL(10, 2) NOT NULL
--);
--19 CREATE TABLE OrderDetails (
-- OrderID INT NOT NULL,
--ProductID INT NOT NULL,
--Quantity INT NOT NULL,
--Price DECIMAL(10, 2) NOT NULL,
--CONSTRAINT PK_OrderDetails PRIMARY KEY (OrderID, ProductID)
--);
--20ISNULL(expression, replacement_value), SELECT ISNULL(NULL, 'No Value');,SELECT CustomerID, ISNULL(Phone, 'No Phone') AS Phone
--FROM Customers;
--21 CREATE TABLE Employees (
--EmpID INT PRIMARY KEY,
--Name NVARCHAR(100) NOT NULL,
--Email NVARCHAR(100) NOT NULL UNIQUE
--);
--22 CREATE TABLE Orders (
--OrderID INT PRIMARY KEY,
--CustomerID INT NOT NULL,
--OrderDate DATE NOT NULL,
--CONSTRAINT FK_Orders_Customers FOREIGN KEY (CustomerID)
--        REFERENCES Customers(CustomerID)
--        ON DELETE CASCADE
--        ON UPDATE CASCADE
--);
PRIMARY KEY is the main key of the table,Cannot be NULL
