DROP TABLE Admin;
DROP TABLE RentalStoreBranch;
DROP TABLE Booking;
DROP TABLE PartTime;
DROP TABLE FullTime;
DROP TABLE Employee;
DROP TABLE DriversLicense;
DROP TABLE Discount;
DROP TABLE Bill;
DROP TABLE Payment;
DROP TABLE Rental;
DROP TABLE Liability;
DROP TABLE Car;
DROP TABLE Customer;

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
    
INSERT INTO Customer VALUES(1, 'John', 'john123@gmail.com', 'john123', '321john', '314-675-0091', 'Toronto', 'Apple Crescent', 'Ontario', 'M1L123');
INSERT INTO Customer VALUES(92, 'Lisa', 'lisalisa@gmail.com', 'lisalisa', 'skfmfdla', '455-330-2043', 'Toronto', 'Dundas Street', 'Ontario', 'MA8092');
INSERT INTO Customer VALUES(302, 'Lala', 'lala@gmail.com', 'laalaa', 'aifodo', '905-321-5435', 'Saskatoon', 'Candle Drive', 'Saskatchewan', 'YEL321');
INSERT INTO Customer VALUES(4, 'Bob', 'bobbb@gmail.com', 'bob456', '123456', '341-544-4444', 'Winnipeg', 'Oat Street', 'Manitoba', 'M4356RS');
INSERT INTO Customer VALUES(500, 'Peace', 'peace@gmail.com', 'peaceee', 'asklklfdkl', '416-111-0321', 'Calgary', 'Banff Drive', 'Alberta', 'M1L324');
SELECT * FROM Customer;
    
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

INSERT INTO Car VALUES(1,8,'POLO', 'VW',    'SP',    '2001', 'MANUAL', 'C', '122', 'ontario', 'TORONTO','WINK','M5A2B3');
INSERT INTO Car VALUES(2,4, 'TIG', 'RENAULT', 'S',  '2002', 'AUTO', 'C', '986', 'ontario', 'TORONTO','RED','M5B2B3');
INSERT INTO Car VALUES(3,7, 'CRETA', 'HYUN','RS',  '2005', 'AUTO', 'C', '905', 'ontario', 'TORONTO','PAT','B5A2Z4');
INSERT INTO Car VALUES(4,6, 'EECO', 'SUZUKI', 'GT',  '2007', 'AUTO', 'C', '900', 'ontario', 'TORONTO','WIMP','M5A2B3');
INSERT INTO Car VALUES(5,5, 'CITY', 'HONDA', 'PR',  '2009', 'MANUAL', 'C', '89', 'ontario', 'TORONTO','WINK','F8A2B3');
SELECT * FROM Car;

CREATE TABLE Liability(
    LiabNumber      NUMBER PRIMARY KEY,
    LiabType        VARCHAR2(50) NOT NULL CHECK (LiabType = 'Liability'),
    LiabCoverage    VARCHAR2(50) NOT NULL,
    LiabExpenses    NUMBER NOT NULL
    );

INSERT INTO Liability VALUES(10, 'Liability', 'ttrg', '2000');
INSERT INTO Liability VALUES(20, 'Liability', 'tsef', '900');
INSERT INTO Liability VALUES(30, 'Liability', 'tgd', '450');
INSERT INTO Liability VALUES(40, 'Liability', 'trfv','1200');
INSERT INTO Liability VALUES(50, 'Liability', 'jo@gmail.com', '1000');
SELECT * FROM LIABILITY;
    
CREATE TABLE Rental(
    RentNumber      NUMBER PRIMARY KEY,
    RentType        VARCHAR2(50) NOT NULL CHECK (RentType = 'Rental'),
    RentCoverage    VARCHAR2(50) NOT NULL,
    RentExpenses    NUMBER NOT NULL,
    TermLength      VARCHAR2(20) NOT NULL
    );

INSERT INTO Rental VALUES(1, 'Rental','t', '2000',4);
INSERT INTO Rental VALUES(2, 'Rental', 't', '900',3);
INSERT INTO Rental VALUES(3, 'Rental', 't', '450',1);
INSERT INTO Rental VALUES(4, 'Rental', 't','1200',6);
INSERT INTO Rental VALUES(5, 'Rental', 'jo@gmail.com', '1000',2);
SELECT * FROM Rental;    

CREATE TABLE Payment(
    PayNumber   NUMBER PRIMARY KEY,
    PayTotal    NUMBER DEFAULT 0,
    PayType     VARCHAR2(25) NOT NULL
    );

INSERT INTO Payment VALUES(1, '90', 'CAS');
INSERT INTO Payment VALUES(2, '50', 'CASHnji');
INSERT INTO Payment VALUES(3, '20', 'CH');
INSERT INTO Payment VALUES(4, '500', 'BIT');
INSERT INTO Payment VALUES(5, '60', 'ETHEREUn');
SELECT * FROM Payment;

CREATE TABLE Bill(
    BillNumber      NUMBER PRIMARY KEY,
    BillDate        DATE UNIQUE NOT NULL,
    BillProvince     VARCHAR2(100) NOT NULL,
    BillCity         VARCHAR2(50) NOT NULL,
    BillStreet       VARCHAR2(50) NOT NULL,
    BillPostalCode   VARCHAR2(50) NOT NULL
    );

INSERT INTO Bill VALUES(1, '2021-10-03', 'ontario',    'toronto', 'wink', 'M5A2B6');
INSERT INTO Bill VALUES(2, '2021-09-04', 'ontario', 'toronto',  'red', 'X4CY76');
INSERT INTO Bill VALUES(3, '2021-01-02', 'montreal','toronto',  'dart', 'P9IY70');
INSERT INTO Bill VALUES(4, '2021-10-01', 'quebec', 'toronto',  'farm', 'M5A2B7');
INSERT INTO Bill VALUES(5, '2021-06-07', 'china', 'toronto',  'ace', 'S5F7K1');
SELECT * FROM Bill;
    
CREATE TABLE Discount(
    DiscNumber      NUMBER PRIMARY KEY,
    DiscAmount      NUMBER DEFAULT 0,
    DiscType        VARCHAR2(25) NOT NULL
    );

INSERT INTO Discount VALUES(1, '90', 'CASH');
INSERT INTO Discount VALUES(2, '50', 'CASH');
INSERT INTO Discount VALUES(3, '20', 'CHEQUE');
INSERT INTO Discount VALUES(4, '500', 'CASH');
SELECT * FROM Discount;

CREATE TABLE DriversLicense(
    LicenseNum      NUMBER PRIMARY KEY,
    BirthDate       VARCHAR2(30) UNIQUE NOT NULL,
    IssueDate       VARCHAR2(30) UNIQUE NOT NULL,
    ExpiryDate      VARCHAR2(30) UNIQUE NOT NULL,
    IssueAuthority  VARCHAR2(20) NOT NULL
    );

INSERT INTO DriversLicense VALUES(123, '12-11-2003', '11-10-2019', '11-10-2024',  'abdef');
INSERT INTO DriversLicense VALUES(10, '11-07-2000', '10-05-2017', '10-05-2022', 'abdef');
INSERT INTO DriversLicense VALUES(1596, '09-04-1994', '06-11-2012', '06-11-2017', 'abdef');
INSERT INTO DriversLicense VALUES(2, '08-02-1991', '03-02-2009', '03-02-2014', 'abdef');
INSERT INTO DriversLicense VALUES(4, '25-04-1985', '13-01-2000', '01-13-2005', 'abdef');
SELECT * FROM DriversLicense;
    
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

INSERT INTO FullTime VALUES(000006, 'Full Time', '416-609-3241', 'Jane', 'toronto', 'shrine place', 'ontario', 'w1n9s5', 20000);
INSERT INTO FullTime VALUES(000007, 'Full Time', '416-020-2090', 'George', 'ajax', 'buckingham avenue', 'ontario', 'a3m4v0', 15000);
INSERT INTO FullTime VALUES(000008, 'Full Time', '647-741-9216', 'Skye', 'barrie', 'vineyard road', 'ontario', 'p5qb8d', 30000);
INSERT INTO FullTime VALUES(000009, 'Full Time', '647-332-1009', 'Henry', 'brampton', 'bloomberg crescent', 'ontario', 'j9g4q3', 45000);
INSERT INTO FullTime VALUES(000010, 'Full Time', '416-129-1001', 'Louise', 'quebec city', 'rue du petit-champlain', 'quebec', 'g6n39l', 60000);
SELECT * FROM FullTime;
    
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

INSERT INTO PartTime VALUES(000001, 'Part Time', '416-827-4231', 'Sally', 'toronto', 'shrine place', 'ontario', 'w3k4j8', 12, 15);
INSERT INTO PartTime VALUES(000002, 'Part Time', '416-200-2900', 'Angelo', 'ajax', 'buckingham avenue', 'ontario', 'b1d3q8', 15, 12);
INSERT INTO PartTime VALUES(000003, 'Part Time', '647-111-6291', 'Maya', 'barrie', 'vineyard road', 'ontario', 'x4b0n4', 20, 13);
INSERT INTO PartTime VALUES(000004, 'Part Time', '647-233-1900', 'Ben', 'brampton', 'bloomberg crescent', 'ontario', 'n4l3q8', 28, 12);
INSERT INTO PartTime VALUES(000005, 'Part Time', '416-291-0011', 'Fayette', 'quebec city', 'rue du petit-champlain', 'quebec', 'r4h8d3', 26, 15);
SELECT * FROM PartTime;
    
CREATE TABLE Booking(
    BookNum     NUMBER PRIMARY KEY,
    BookCost    NUMBER DEFAULT 0,
    StartDate   VARCHAR2(30) NOT NULL,
    EndDate     VARCHAR2(30) NOT NULL,
    Branch      NUMBER REFERENCES RentalStoreBranch(BranchNum) ON DELETE CASCADE
    );

INSERT INTO Booking VALUES(1, 20, '08-02-2001', '08-04-2001', 3);
INSERT INTO Booking VALUES(2, 20, '08-02-1992', '08-03-1992', 7);
INSERT INTO Booking VALUES(3, 20, '08-03-2020', '08-05-2020', 11);
INSERT INTO Booking VALUES(4, 20, '01-06-2021', '01-10-2021', 18);
INSERT INTO Booking VALUES(5, 30, '01-06-2021', '01-10-2021', 25);
SELECT * FROM Booking;

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
    
INSERT INTO RentalStoreBranch VALUES(3, 'Michael', '416-493-2215', 10, 'toronto', 'shrine place', 'ontario', 'f6l7b9');
INSERT INTO RentalStoreBranch VALUES(7, 'Aditi', '416-672-6720', 100, 'ajax', 'buckingham avenue', 'ontario', 'd8c8s1');
INSERT INTO RentalStoreBranch VALUES(11, 'Samuel', '647-493-2215', 35, 'barrie', 'vineyard road', 'ontario', 'm5h0g5');
INSERT INTO RentalStoreBranch VALUES(18, 'Alison', '647-395-3307', 40, 'brampton', 'bloomberg crescent', 'ontario', 'b2l5f3');
INSERT INTO RentalStoreBranch VALUES(25, 'Pierre', '819-310-9953', 60, 'quebec city', 'rue du petit-champlain', 'ontario', 'z1e3a6');
SELECT * FROM RentalStoreBranch;

CREATE TABLE Admin(
    AdNum        NUMBER PRIMARY KEY,
    AdName       VARCHAR2(50) NOT NULL,
    AdPhone      VARCHAR2(12) NOT NULL,
    AdCity       VARCHAR2(50) NOT NULL,
    AdStreet     VARCHAR2(50) NOT NULL,
    AdProvince   VARCHAR2(50) NOT NULL,
    AdPostalCode VARCHAR2(50) NOT NULL
    );
    
INSERT INTO Admin VALUES(1, 'Jake', '647-455-2342', 'Ottawa', 'Pine Crescent', 'Ontario', 'MA745l');
INSERT INTO Admin VALUES(34, 'Pop', '416-342-6492', 'Brandon', 'pine crescent', 'Manitoba', 'M1L432');
INSERT INTO Admin VALUES(1540, 'Kyle', '685-092-5478', 'Regina', 'pine crescent', 'Saskatchewan', 'M58A06');
INSERT INTO Admin VALUES(2, 'Norman', '312-238-3402', 'Edmonton', 'pine crescent', 'Alberta', 'M3T654');
INSERT INTO Admin VALUES(3, 'Karen', '239-455-2342', 'Windsor', 'pine crescent', 'Ontario', 'MYA064');
SELECT * FROM Admin;  