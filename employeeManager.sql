CREATE DATABASE employeeManager;
USE employeeManager;

CREATE TABLE login (
username VARCHAR(25),
password VARCHAR(30)
);

INSERT INTO login VALUES ("ahmar", "12345");

CREATE TABLE addEmployee (
CNIC VARCHAR(14) PRIMARY KEY NOT NULL,
Emp_ID VARCHAR(30),
Name VARCHAR(50),
Father_Name VARCHAR(50),
Date_Of_Birth VARCHAR(40),
Education VARCHAR(40),
Address VARCHAR(100),
Phone_Number VARCHAR(40),
Email VARCHAR(50),
Designation VARCHAR(30),
Salary VARCHAR(40)
);

SELECT * FROM addEmployee;

SELECT MAX(Emp_ID) FROM addEmployee;


SELECT * FROM login;


-- Stored Procedure to Add Employee
DELIMITER //
CREATE PROCEDURE AddEmployeeProc (
    IN p_CNIC VARCHAR(14),
    IN p_Emp_ID VARCHAR(30),
    IN p_Name VARCHAR(50),
    IN p_Father_Name VARCHAR(50),
    IN p_Date_Of_Birth VARCHAR(40),
    IN p_Education VARCHAR(40),
    IN p_Address VARCHAR(100),
    IN p_Phone_Number VARCHAR(40),
    IN p_Email VARCHAR(50),
    IN p_Designation VARCHAR(30),
    IN p_Salary VARCHAR(40)
)
BEGIN
    INSERT INTO addEmployee (CNIC, Emp_ID, Name, Father_Name, Date_Of_Birth, Education, Address, Phone_Number, Email, Designation, Salary)
    VALUES (p_CNIC, p_Emp_ID, p_Name, p_Father_Name, p_Date_Of_Birth, p_Education, p_Address, p_Phone_Number, p_Email, p_Designation, p_Salary);
END //
DELIMITER ;

-- Stored Procedure to Delete Employee
DELIMITER //
CREATE PROCEDURE DeleteEmployeeProc (
    IN p_Emp_ID VARCHAR(30)
)
BEGIN
    DELETE FROM addEmployee WHERE Emp_ID = p_Emp_ID;
END //
DELIMITER ;
