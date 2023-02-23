#!/bin/sh
#export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib
<<EOF

SELECT CusName, CusProvince FROM Customer
GROUP BY CusProvince, CusName
ORDER BY CusProvince ASC;

SELECT CarNumber, CarName, CarBrand, CarTransmission FROM Car
WHERE CarBrand = 'HONDA'
AND EXISTS
(SELECT * FROM Car c
WHERE c.CarTransmission = 'MANUAL')
GROUP BY CarNumber, CarName, CarBrand, CarTransmission
ORDER BY CarNumber;

SELECT COUNT(LiabType) FROM Liability
ORDER BY LiabNumber ASC;

SELECT RentNumber, RentType, RentExpenses, TermLength FROM Rental
     WHERE RentExpenses >=950 AND
     TermLength >=3
GROUP BY RentNumber, RentType, RentExpenses, TermLength
ORDER BY RentNumber ASC;

SELECT 'Average Payment is', AVG(PayTotal)
FROM Payment group by 'Average Payment is';

SELECT 'Bill #', BillNumber, ' was purchased on: ', BillDate
FROM Bill;

SELECT DiscNumber, DiscAmount, DiscType FROM Discount
WHERE DiscAmount BETWEEN 10 AND 30
GROUP BY DiscNumber, DiscAmount, DiscType
ORDER BY DiscAmount DESC;

SELECT LicenseNum, IssueDate, ExpiryDate, IssueAuthority FROM DriversLicense
GROUP BY LicenseNum, IssueDate, ExpiryDate, IssueAuthority
ORDER BY LicenseNum DESC;

SELECT *
FROM FullTime
WHERE (EmpProvince = 'Ontario' 
	AND EmpSalary >= 20000);

SELECT 'Minimum Pay Rate is', MIN(EmpPayRate)
FROM PartTime;

SELECT 'Maxmimum Number of Employees is', Max(NumOfEmp)
FROM RentalStoreBranch;

SELECT Booking.BookNum, BookCost, PayTotal, PayType, Payment.PayNumber
FROM Booking, Payment
WHERE Booking.BookCost = Payment.PayTotal 
GROUP BY Booking.BookNum, BookCost, PayTotal, PayType, Payment.PayNumber
ORDER BY Booking.BookNum ASC;

SELECT AdNum, AdName FROM  Admin
WHERE AdName LIKE 'P%'
OR AdName LIKE 'N%'
GROUP BY AdNum, AdName
ORDER BY AdName DESC;

SELECT Customer.CusNumber, Customer.CusName, DriversLicense.BirthDate, DriversLicense.LicenseNum
FROM Customer, DriversLicense
WHERE Customer.CusNumber = DriversLicense.LicenseNum
AND Customer.CusProvince = 'Ontario'
GROUP BY Customer.CusNumber, Customer.CusName, DriversLicense.BirthDate, DriversLicense.LicenseNum
ORDER BY CusNumber DESC;

SELECT DISTINCT BranchName FROM RentalStoreBranch
WHERE BranchProvince = 'ontario'
GROUP BY BranchName;

SELECT BranchNum, BranchName, BranchCity FROM RentalStoreBranch
WHERE BranchName = 'Crenty Scarborough'
AND NOT EXISTS
(SELECT * FROM RentalStoreBranch r
WHERE r.BranchCity = 'Ottawa')
GROUP BY BranchNum, BranchName,BranchCity;

SELECT Admin.AdCity, Admin.AdName, RentalStoreBranch.BranchCity, RentalStoreBranch.BranchName, RentalStoreBranch.NumOfEmp
FROM Admin, RentalStoreBranch
WHERE Admin.AdCity = RentalStoreBranch.BranchCity
GROUP BY Admin.AdCity, Admin.AdName, RentalStoreBranch.BranchCity, RentalStoreBranch.BranchName, RentalStoreBranch.NumOfEmp
ORDER BY AdName DESC;

SELECT EmpNumber from FullTime
UNION ALL
Select EmpNumber from PartTime where EmpProvince = 'Ontario'
GROUP BY EmpNumber;

exit;
EOF