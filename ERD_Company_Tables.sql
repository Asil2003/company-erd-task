CREATE TABLE Dependent (
    SSN INT,
    DName VARCHAR(50),
    BD DATE,
    Gender CHAR(1),
    DNUM INT,
    PRIMARY KEY (SSN, DName),
    FOREIGN KEY (SSN) REFERENCES Employee(SSN),
    FOREIGN KEY (DNUM) REFERENCES Department(DNUM)
);
GO
