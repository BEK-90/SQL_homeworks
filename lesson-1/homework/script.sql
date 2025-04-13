--Easy  
--So everything we see with our eyes is information,data table view,a table that stores data in columns
--create, add, modify, delete, manage,
--Windows Authentication,(avtomat) SQL Server Authentication,(login parol) Mixed Mode Authenticationichiki 
--Medium
USE SCHOOLDB
CREATE TABLE STUDENTS(
	STUDENTID INT PRIMARY KEY,
	NAME VARCHAR(50),
	Age int);
	SELECT * FROM STUDENTS
	
	INSERT INTO STUDENTS (STUDENTID,NAME,AGE) VALUES
	(1,'OTABEK',1),
	(2,'OYBEK',3),
	(3,'ELBEK',1)
	--SQL bu(work with existing information) SQL SERVER bu(responsible for the safety of the information, that is, the heart)SSMS bu (sql easy control panel)
	HARD 
	-- DDL( create,alter,drop,truncate,)
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT
);
--DML(insert,update,delete) INSERT INTO Students (StudentID, Name, Age) VALUES (1, 'Ivan', 50);
UPDATE Students SET Age = 10 WHERE StudentID = 1;
DELETE FROM Students WHERE StudentID = 1;

--DQL (select) tanlash, SELECT * FROM Students;
SELECT Name, Age FROM Students WHERE Age > 10;

DCL (grant) dustup berish (revoke) buyruni orqaga qaytarish, GRANT SELECT, INSERT ON Students TO user1;
REVOKE INSERT ON Students FROM user1;

--TCL (begin transaction)boshlash(commit)ijro etish(rollback)ozgarishi orqaga qaytarish
BEGIN TRANSACTION; UPDATE Students SET Age = 17 WHERE StudentID = 2; ROLLBACK; commit;
INSERT INTO STUDENTS (STUDENTID,NAME,AGE) VALUES
	(1,'OTABEK',1),
	(2,'OYBEK',3),
	(3,'ELBEK',1)
---
