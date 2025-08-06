-- Use your database
USE CompanyDB;
GO

-- 1. Insert into DEPT
INSERT INTO DEPT (DUNM, SSN, HIRDATE, DN)
VALUES 
(1, 1001, '2022-01-10', 'IT Department'),
(2, 1002, '2022-02-15', 'HR Department');

-- 2. Insert managers into EMP (same SSNs used in DEPT)
INSERT INTO EMP (SSN, Fname, Lname, gender, super_id, BD, DUNM)
VALUES 
(1001, 'Alice', 'Smith', 'F', NULL, '1990-05-10', 1),
(1002, 'Bob', 'Johnson', 'M', NULL, '1988-03-15', 2);

-- 3. Insert other employees (supervised by managers)
INSERT INTO EMP (SSN, Fname, Lname, gender, super_id, BD, DUNM)
VALUES 
(2001, 'Charlie', 'Brown', 'M', 1001, '1995-07-20', 1),
(2002, 'Diana', 'Jones', 'F', 1002, '1996-11-30', 2),
(2003, 'Ethan', 'Williams', 'M', 1001, '1997-12-12', 1);

-- 4. Insert into LOC
INSERT INTO LOC (DUNM, LOC)
VALUES 
(1, 'Building A'),
(2, 'Building B');

-- 5. Insert into PROJECT
INSERT INTO PROJECT (PNUM, PN, LOC, CITY, DUNM)
VALUES 
(5001, 'AI Development', 'Building A', 'Muscat', 1),
(5002, 'HR System Upgrade', 'Building B', 'Salalah', 2);

-- 6. Insert into WORK
INSERT INTO WORK (SSN, PNUM, hours)
VALUES 
(2001, 5001, 40.0),
(2002, 5002, 35.5),
(2003, 5001, 25.0);

-- 7. Insert into DEPENDENT
INSERT INTO DEPENDENT (dnum, BD, GENDER, ssn)
VALUES 
(1, '2010-06-15', 'F', 2001),
(2, '2012-09-05', 'M', 2002),
(3, '2013-01-22', 'M', 2003);
