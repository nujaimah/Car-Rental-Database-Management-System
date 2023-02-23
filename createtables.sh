#!/bin/sh
#export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib
 <<EOF

CREATE TABLE Customer(
    CusNumber     NUMBER PRIMARY KEY,
    CusName       VARCHAR2(50) NOT NULL,
    CusEmail      VARCHAR2(250) UNIQUE NOT NULL,
    CusUsername   VARCHAR2(20) UNIQUE NOT NULL,
    CusPassword   VARCHAR2(20) NOT NULL,
    CusPhone      VARCHAR2(12) NOT NULL,
    CusCity       VARCHAR2(50) NOT NULL,
    CusStreet     VARCHAR2(50) NOT NULL,
    CusProvince   VARCHAR2(50) NOT NULL,
    CusPostalCode VARCHAR2(50) NOT NULL
    );

CREATE TABLE Car(
    CarNumber   NUMBER PRIMARY KEY,
    CarSeats    NUMBER DEFAULT 2,
    CarName     VARCHAR2(50) NOT NULL,
    CarBrand    VARCHAR2(50) NOT NULL,
    CarModel    VARCHAR2(50) NOT NULL,
    CarYear     NUMBER NOT NULL CHECK (CarYear BETWEEN 2000 AND 2021),
    CarTransmission VARCHAR2(100) NOT NULL,
    CarClass        VARCHAR2(50) NOT NULL,
    CarPlateNum     NUMBER UNIQUE NOT NULL,
    CarProvince     VARCHAR2(100) NOT NULL,
    CarCity         VARCHAR2(50) NOT NULL,
    CarStreet       VARCHAR2(50) NOT NULL,
    CarPostalCode   VARCHAR2(50) NOT NULL
    );

CREATE TABLE Liability(
    LiabNumber      NUMBER PRIMARY KEY,
    LiabType        VARCHAR2(50) NOT NULL CHECK (LiabType = 'Liability'),
    LiabCoverage    VARCHAR2(50) NOT NULL,
    LiabExpenses    NUMBER NOT NULL
    );

CREATE TABLE Rental(
    RentNumber      NUMBER PRIMARY KEY,
    RentType        VARCHAR2(50) NOT NULL CHECK (RentType = 'Rental'),
    RentCoverage    VARCHAR2(50) NOT NULL,
    RentExpenses    NUMBER NOT NULL,
    TermLength      VARCHAR2(20) NOT NULL
    );

CREATE TABLE Payment(
    PayNumber   NUMBER PRIMARY KEY,
    PayTotal    NUMBER DEFAULT 0,
    PayType     VARCHAR2(25) NOT NULL
    );

CREATE TABLE Bill(
    BillNumber      NUMBER PRIMARY KEY,
    BillDate        VARCHAR(20) UNIQUE NOT NULL,
    BillProvince     VARCHAR2(100) NOT NULL,
    BillCity         VARCHAR2(50) NOT NULL,
    BillStreet       VARCHAR2(50) NOT NULL,
    BillPostalCode   VARCHAR2(50) NOT NULL
    );

CREATE TABLE Discount(
    DiscNumber      NUMBER PRIMARY KEY,
    DiscAmount      NUMBER DEFAULT 0,
    DiscType        VARCHAR2(25) NOT NULL
    );

CREATE TABLE DriversLicense(
    LicenseNum      NUMBER PRIMARY KEY,
    BirthDate       VARCHAR2(30) UNIQUE NOT NULL,
    IssueDate       VARCHAR2(30) UNIQUE NOT NULL,
    ExpiryDate      VARCHAR2(30) UNIQUE NOT NULL,
    IssueAuthority  VARCHAR2(20) NOT NULL
    );

CREATE TABLE FullTime(
    EmpNumber   NUMBER PRIMARY KEY,
    EmpType        VARCHAR2(50) NOT NULL CHECK (EmpType = 'Full Time'),
    EmpPhone    VARCHAR2(12) NOT NULL ,
    EmpName     VARCHAR2(50) UNIQUE NOT NULL,
    EmpCity       VARCHAR2(50) NOT NULL,
    EmpStreet     VARCHAR2(50) NOT NULL,
    EmpProvince   VARCHAR2(50) NOT NULL,
    EmpPostalCode VARCHAR2(50),
    EmpSalary     NUMBER NOT NULL
    );

CREATE TABLE PartTime(
    EmpNumber   NUMBER PRIMARY KEY,
    EmpType        VARCHAR2(50) NOT NULL CHECK (EmpType = 'Part Time'),
    EmpPhone    VARCHAR2(12) NOT NULL,
    EmpName     VARCHAR2(50) UNIQUE NOT NULL,
    EmpCity       VARCHAR2(50) NOT NULL,
    EmpStreet     VARCHAR2(50) NOT NULL,
    EmpProvince   VARCHAR2(50) NOT NULL,
    EmpPostalCode VARCHAR2(50) NOT NULL,
    EmpPayRate    NUMBER NOT NULL,
    EmpHours      NUMBER NOT NULL
    );

CREATE TABLE RentalStoreBranch(
    BranchNum        NUMBER PRIMARY KEY,    
    BranchName       VARCHAR2(50) NOT NULL,
    BranchPhone      VARCHAR2(12) NOT NULL,
    NumOfEmp         NUMBER DEFAULT 0,
    BranchCity       VARCHAR2(50) NOT NULL,
    BranchStreet     VARCHAR2(50) NOT NULL,
    BranchProvince   VARCHAR2(50) NOT NULL,
    BranchPostalCode VARCHAR2(50) NOT NULL
    );

CREATE TABLE Booking(
    BookNum     NUMBER PRIMARY KEY,
    BookCost    NUMBER DEFAULT 0,
    StartDate   VARCHAR2(30) NOT NULL,
    EndDate     VARCHAR2(30) NOT NULL,
    Branch      NUMBER REFERENCES RentalStoreBranch(BranchNum) ON DELETE CASCADE
    );

CREATE TABLE Admin(
    AdNum        NUMBER PRIMARY KEY,
    AdName       VARCHAR2(50) NOT NULL,
    AdPhone      VARCHAR2(12) NOT NULL,
    AdCity       VARCHAR2(50) NOT NULL,
    AdStreet     VARCHAR2(50) NOT NULL,
    AdProvince   VARCHAR2(50) NOT NULL,
    AdPostalCode VARCHAR2(50) NOT NULL
    );

exit;
EOF
