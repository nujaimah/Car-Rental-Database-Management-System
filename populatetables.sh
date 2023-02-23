#!/bin/sh
#export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib
<<EOF

INSERT INTO Customer VALUES(123, 'John', 'john123@gmail.com', 'john123', '321john', '314-675-0091', 'Toronto', 'Apple Crescent', 'Ontario', 'M1L123');
INSERT INTO Customer VALUES(10, 'Lisa', 'lisalisa@gmail.com', 'lisalisa', 'skfmfdla', '455-330-2043', 'Toronto', 'Dundas Street', 'Ontario', 'MA8092');
INSERT INTO Customer VALUES(1596, 'Lala', 'lala@gmail.com', 'laalaa', 'aifodo', '905-321-5435', 'Saskatoon', 'Candle Drive', 'Saskatchewan', 'YEL321');
INSERT INTO Customer VALUES(2, 'Bob', 'bobbb@gmail.com', 'bob456', '123456', '341-544-4444', 'Winnipeg', 'Oat Street', 'Manitoba', 'M4356RS');
INSERT INTO Customer VALUES(4, 'Peace', 'peace@gmail.com', 'peaceee', 'asklklfdkl', '416-111-0321', 'Calgary', 'Banff Drive', 'Alberta', 'M1L324');

INSERT INTO Car VALUES(1,8,'POLO', 'VW',    'SP',    '2001', 'MANUAL', 'C', '122', 'ontario', 'TORONTO','WINK','M5A2B3');
INSERT INTO Car VALUES(2,4, 'TIG', 'RENAULT', 'S',  '2002', 'AUTO', 'C', '986', 'ontario', 'TORONTO','RED','M5B2B3');
INSERT INTO Car VALUES(3,7, 'CRETA', 'HONDA','RS',  '2005', 'MANUAL', 'C', '905', 'ontario', 'TORONTO','PAT','B5A2Z4');
INSERT INTO Car VALUES(4,6, 'EECO', 'SUZUKI', 'GT',  '2007', 'AUTO', 'C', '900', 'ontario', 'TORONTO','WIMP','M5A2B3');
INSERT INTO Car VALUES(5,5, 'CITY', 'HONDA', 'PR',  '2009', 'MANUAL', 'C', '89', 'ontario', 'TORONTO','WINK','F8A2B3');

INSERT INTO Liability VALUES(10, 'Liability', 'ttrg', '2000');
INSERT INTO Liability VALUES(20, 'Liability', 'tsef', '900');
INSERT INTO Liability VALUES(30, 'Liability', 'tgd', '450');
INSERT INTO Liability VALUES(40, 'Liability', 'trfv','1200');
INSERT INTO Liability VALUES(50, 'Liability', 'jo@gmail.com', '1000');

INSERT INTO Rental VALUES(1, 'Rental','t', '1200',4);
INSERT INTO Rental VALUES(2, 'Rental', 't', '560',3);
INSERT INTO Rental VALUES(3, 'Rental', 't', '1000',1);
INSERT INTO Rental VALUES(4, 'Rental', 't','210',6);
INSERT INTO Rental VALUES(5, 'Rental', 'jo@gmail.com', '980',2);

INSERT INTO Payment VALUES(1, '20', 'CASH');
INSERT INTO Payment VALUES(2, '200', 'CHEQUE');
INSERT INTO Payment VALUES(3, '150', 'DEBIT');
INSERT INTO Payment VALUES(4, '230', 'BIT');
INSERT INTO Payment VALUES(5, '30', 'CREDIT');

INSERT INTO Bill VALUES(1, '2021-10-03', 'Ontario', 'Toronto', 'Wink Lane', 'M5A2B6');
INSERT INTO Bill VALUES(209, '2021-09-04', 'Ontario', 'Toronto', 'Red Crescent', 'X4CY76');
INSERT INTO Bill VALUES(3111, '2021-01-02', 'Montreal', 'Toronto', 'Dart Drive', 'P9IY70');
INSERT INTO Bill VALUES(43, '2021-10-01', 'Quebec', 'Toronto', 'Farm Avenue', 'M5A2B7');
INSERT INTO Bill VALUES(523, '2021-06-07', 'China', 'Toronto', 'Ace Street', 'S5F7K1');

INSERT INTO Discount VALUES(1, '15', 'CASH');
INSERT INTO Discount VALUES(20, '50', 'CASH');
INSERT INTO Discount VALUES(34, '20', 'CHEQUE');
INSERT INTO Discount VALUES(334, '10', 'CASH');

INSERT INTO DriversLicense VALUES(123, '12-11-2003', '11-10-2019', '11-10-2024',  'MTO');
INSERT INTO DriversLicense VALUES(10, '11-07-2000', '10-05-2017', '10-05-2022', 'DMV');
INSERT INTO DriversLicense VALUES(1596, '09-04-1994', '06-11-2012', '06-11-2017', 'MTO');
INSERT INTO DriversLicense VALUES(2, '08-02-1991', '03-02-2009', '03-02-2014', 'DMV');
INSERT INTO DriversLicense VALUES(4, '25-04-1985', '13-01-2000', '01-13-2005', 'DMV');

INSERT INTO FullTime VALUES(000006, 'Full Time', '416-609-3241', 'Jane', 'Toronto', 'Shrine Place', 'Ontario', 'M5P482', 20000);
INSERT INTO FullTime VALUES(000007, 'Full Time', '416-020-2090', 'George', 'Ajax', 'Buckingham Avenue', 'Ontario', 'A4RT72', 15000);
INSERT INTO FullTime VALUES(000008, 'Full Time', '647-741-9216', 'Skye', 'Barrie', 'Vineyard Road', 'Winnipeg', 'P89T76', 30000);
INSERT INTO FullTime VALUES(000009, 'Full Time', '647-332-1009', 'Henry', 'Brampton', 'Bloomberg Crescent', 'Ontario', 'TY7R87', 45000);
INSERT INTO FullTime VALUES(000010, 'Full Time', '416-129-1001', 'Louise', 'Quebec City', 'Rue du Petit-Champlain', 'Quebec', 'AS8TY7', 60000);

INSERT INTO PartTime VALUES(000001, 'Part Time', '416-827-4231', 'Sally', 'Toronto', 'Shrine Place', 'Ontario', 'M5P482', 12, 15);
INSERT INTO PartTime VALUES(000002, 'Part Time', '416-200-2900', 'Angelo', 'Ajax', 'Buckingham Avenue', 'Ontario', 'A4RT72', 15, 12);
INSERT INTO PartTime VALUES(000003, 'Part Time', '647-111-6291', 'Maya', 'Barrie', 'Bloomberg Road', 'Ontario', 'P89T76', 20, 13);
INSERT INTO PartTime VALUES(000004, 'Part Time', '647-233-1900', 'Ben', 'Brampton', 'Bloomberg Crescent', 'Ontario', 'TY7R87', 28, 12);
INSERT INTO PartTime VALUES(000005, 'Part Time', '416-291-0011', 'Fayette', 'Quebec City', 'Rue du Petit-Champlain', 'Quebec', 'AS8TY7', 26, 15);

INSERT INTO RentalStoreBranch VALUES(3, 'Crenty Scarborough', '416-493-2215', 10, 'Ottawa', 'shrine place', 'ontario', 'f6l7b9');
INSERT INTO RentalStoreBranch VALUES(7, 'Crenty Scarborough', '416-672-6720', 100, 'Brandon', 'buckingham avenue', 'ontario', 'd8c8s1');
INSERT INTO RentalStoreBranch VALUES(11, 'missipisi', '647-493-2215', 35, 'barrie', 'Regina', 'ontario', 'm5h0g5');
INSERT INTO RentalStoreBranch VALUES(18, 'hitman', '647-395-3307', 40, 'brampton', 'bloomberg crescent', 'ontario', 'b2l5f3');
INSERT INTO RentalStoreBranch VALUES(25, 'toronto', '819-310-9953', 60, 'quebec city', 'rue du petit-champlain', 'ontario', 'z1e3a6');

INSERT INTO Booking VALUES(1, 20, '08-02-2001', '08-04-2001', 3);
INSERT INTO Booking VALUES(2, 200, '08-02-1992', '08-03-1992', 7);
INSERT INTO Booking VALUES(3, 150, '08-03-2020', '08-05-2020', 11);
INSERT INTO Booking VALUES(4, 230, '01-06-2021', '01-10-2021', 18);
INSERT INTO Booking VALUES(5, 30, '01-06-2021', '01-10-2021', 25);

INSERT INTO Admin VALUES(1, 'Jake', '647-455-2342', 'Ottawa', 'Pine Crescent', 'Ontario', 'MA745l');
INSERT INTO Admin VALUES(34, 'Pop', '416-342-6492', 'Brandon', 'pine crescent', 'Manitoba', 'M1L432');
INSERT INTO Admin VALUES(1540, 'Pape', '685-092-5478', 'Regina', 'pine crescent', 'Saskatchewan', 'M58A06');
INSERT INTO Admin VALUES(2, 'Norman', '312-238-3402', 'Edmonton', 'pine crescent', 'Alberta', 'M3T654');
INSERT INTO Admin VALUES(3, 'Karen', '239-455-2342', 'Windsor', 'pine crescent', 'Ontario', 'MYA064');

exit;
EOF
