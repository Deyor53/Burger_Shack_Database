INSERT INTO Branches (branchID, branchAddress, branchPhone) VALUES(1, 'Stillorgan', '012883977');
INSERT INTO Branches (branchID, branchAddress, branchPhone) VALUES(2, 'Dundrum', '012883978');
INSERT INTO Branches (branchID, branchAddress, branchPhone) VALUES(3, 'Deansgrange', '012883979');
INSERT INTO Branches (branchID, branchAddress, branchPhone) VALUES(4, 'Foxrock', '012883980');
INSERT INTO Branches (branchID, branchAddress, branchPhone) VALUES(5, 'Blackrock', '012883981');
INSERT INTO Branches (branchID, branchAddress, branchPhone) VALUES(6, 'Bray', '012883982');


INSERT INTO Customers (custID, custName, custAddress, custEmail, custAge) VALUES(1, 'Barack Obama', 'Dun Laoghaire', 'bara@gmail.com', 21);
INSERT INTO Customers (custID, custName, custAddress, custEmail, custAge) VALUES(2, 'Deyor Abidjanov', 'Drogheda', 'deyor@gmail.com', 18);
INSERT INTO Customers (custID, custName, custAddress, custEmail, custAge) VALUES(3, 'Ronda Rousey', 'Drumcondra', 'roro@yahoo.com', 24);
INSERT INTO Customers (custID, custName, custAddress, custEmail, custAge) VALUES(4, 'Michael Jackson', 'Crumlin', 'mike@hotmail.com', 38);
INSERT INTO Customers (custID, custName, custAddress, custEmail, custAge) VALUES(5, 'Rod Stewart', 'Swords', 'roddy@gmail.com', 43);
INSERT INTO Customers (custID, custName, custAddress, custEmail, custAge) VALUES(6, 'Phil Collins', 'Monkstown', 'philip@mail.ru', 78);


INSERT INTO Bookings (bookingID, custID, branchID, guestAmount, bookingTime, bookingType) VALUES(1, 1, 1, 2, '2022-12-05', 'Walk-in');
INSERT INTO Bookings (bookingID, custID, branchID, guestAmount, bookingTime, bookingType) VALUES(2, 2, 2, 1, '2022-12-05', 'Walk-in');
INSERT INTO Bookings (bookingID, custID, branchID, guestAmount, bookingTime, bookingType) VALUES(3, 3, 3, 1, '2022-12-05', 'Walk-in');
INSERT INTO Bookings (bookingID, custID, branchID, guestAmount, bookingTime, bookingType) VALUES(4, 4, 4, 3, '2022-12-05', 'Online');
INSERT INTO Bookings (bookingID, custID, branchID, guestAmount, bookingTime, bookingType) VALUES(5, 5, 5, 1, '2022-12-05', 'Phone');
INSERT INTO Bookings (bookingID, custID, branchID, guestAmount, bookingTime, bookingType) VALUES(6, 6, 6, 1, '2022-12-05', 'Online');


INSERT INTO Tables (tableID, bookingID, tableType, tableLocation) VALUES(1, 1, 2, 'Interior');
INSERT INTO Tables (tableID, bookingID, tableType, tableLocation) VALUES(2, 2, 2, 'Interior');
INSERT INTO Tables (tableID, bookingID, tableType, tableLocation) VALUES(3, 3, 6, 'Window');
INSERT INTO Tables (tableID, bookingID, tableType, tableLocation) VALUES(4, 4, 4, 'Interior');
INSERT INTO Tables (tableID, bookingID, tableType, tableLocation) VALUES(5, 5, 8, 'Window');
INSERT INTO Tables (tableID, bookingID, tableType, tableLocation) VALUES(6, 6, 2, 'Interior');


INSERT INTO Managers (managerID, branchID, bookingID, managerName, managerAddress, managerPhone, managerEmail, managerDOB, managerStartDate) VALUES(1, 1, 1, 'Joe Bloggs', 'Stillorgan', '0833568600', 'bloggs@burgershack.com', '1985-01-23', '2015-03-15');
INSERT INTO Managers (managerID, branchID, bookingID, managerName, managerAddress, managerPhone, managerEmail, managerDOB, managerStartDate) VALUES(2, 2, 2, 'Donald Trump', 'Donnybrook', '0833568601', 'don@burgershack.com', '1985-01-23', '2015-03-15');
INSERT INTO Managers (managerID, branchID, bookingID, managerName, managerAddress, managerPhone, managerEmail, managerDOB, managerStartDate) VALUES(3, 3, 3, 'Taylor Swift', 'Ballsbridge', '0833568602', 'taytay@burgershack.com', '1985-01-24', '2015-03-16');
INSERT INTO Managers (managerID, branchID, bookingID, managerName, managerAddress, managerPhone, managerEmail, managerDOB, managerStartDate) VALUES(4, 4, 4, 'Stormzy', 'Deansgrange', '0833568603', 'stormz@burgershack.com', '1985-01-24', '2015-03-13');
INSERT INTO Managers (managerID, branchID, bookingID, managerName, managerAddress, managerPhone, managerEmail, managerDOB, managerStartDate) VALUES(5, 5, 5, 'Graham Norton', 'Foxrock', '0833568604', 'norton@burgershack.com', '1985-02-23', '2015-03-24');
INSERT INTO Managers (managerID, branchID, bookingID, managerName, managerAddress, managerPhone, managerEmail, managerDOB, managerStartDate) VALUES(6, 6, 6, 'Steven Ryan', 'Dun Laoghaire', '0833568605', 'steve@burgershack.com', '1984-03-23', '2015-12-12');


INSERT INTO Waiters (waiterID, branchID, bookingID, waiterName, waiterAddress, waiterPhone, waiterEmail, waiterDOB, waiterStartDate) VALUES(7, 1, 1, 'Mike Tyson', 'Crumlin', '0833568606', 'iron@burgershack.com', '1999-03-23', '2015-09-16');
INSERT INTO Waiters (waiterID, branchID, bookingID, waiterName, waiterAddress, waiterPhone, waiterEmail, waiterDOB, waiterStartDate) VALUES(8, 2, 2, 'Oprah Winfrey', 'swords', '0833568607', 'cars@burgershack.com', '1989-03-23', '2015-09-17');
INSERT INTO Waiters (waiterID, branchID, bookingID, waiterName, waiterAddress, waiterPhone, waiterEmail, waiterDOB, waiterStartDate) VALUES(9, 3, 3, 'Malcolm X', 'Monkstown', '0833568608', 'malc@burgershack.com', '2000-03-23', '2015-03-16');
INSERT INTO Waiters (waiterID, branchID, bookingID, waiterName, waiterAddress, waiterPhone, waiterEmail, waiterDOB, waiterStartDate) VALUES(10, 4, 4, 'Rosa Parks', 'Foxrock', '0833568609', 'rosap@burgershack.com', '2000-03-23', '2015-04-11');
INSERT INTO Waiters (waiterID, branchID, bookingID, waiterName, waiterAddress, waiterPhone, waiterEmail, waiterDOB, waiterStartDate) VALUES(11, 5, 5, 'Muhammad Ali', 'Ballsbridge', '0833568610', 'butterbee@burgershack.com', '1995-03-23', '2015-03-16');
INSERT INTO Waiters (waiterID, branchID, bookingID, waiterName, waiterAddress, waiterPhone, waiterEmail, waiterDOB, waiterStartDate) VALUES(12, 6, 6, 'Bobby Lee', 'Leopardstown', '0833568611', 'sleptking@burgershack.com', '1986-03-23', '2015-08-01');
INSERT INTO Waiters (waiterID, branchID, bookingID, waiterName, waiterAddress, waiterPhone, waiterEmail, waiterDOB, waiterStartDate) VALUES(13, 4, 4, 'Kevin Holland', 'Tallaght', '0833568689', 'kev@burgershack.com', '1986-03-23', '2015-08-01');
INSERT INTO Waiters (waiterID, branchID, bookingID, waiterName, waiterAddress, waiterPhone, waiterEmail, waiterDOB, waiterStartDate) VALUES(14, 4, 4, 'Bradd Pitt', 'Firhouse', '0833568690', 'pitty@burgershack.com', '1986-03-23', '2015-08-01');
INSERT INTO Waiters (waiterID, branchID, waiterName, waiterAddress, waiterPhone, waiterEmail, waiterDOB, waiterStartDate) VALUES(15, 5, 'Ben Smith', 'Firhouse', '0833568111', 'red@burgershack.com', '1996-04-23', '2015-08-02');
INSERT INTO Waiters (waiterID, branchID, waiterName, waiterAddress, waiterPhone, waiterEmail, waiterDOB, waiterStartDate) VALUES(6, 5, 'AJ Black', 'Firhouse', '0833568112', 'blue@burgershack.com', '1996-05-23', '2015-08-03');

INSERT INTO COVID (tableID, bookingID, guestName, guestEmail, guestPhone) VALUES(1, 1, 'Joe Rogan', 'jre@gmail.com', '0833568612');
INSERT INTO COVID (tableID, bookingID, guestName, guestEmail, guestPhone) VALUES(2, 2, 'Amanda Nunes', 'lioness@mail.ru', '0833568613');
INSERT INTO COVID (tableID, bookingID, guestName, guestEmail, guestPhone) VALUES(3, 3, 'Katniss Everdeen', 'hungergames@yahoo.com', '0833568614');
INSERT INTO COVID (tableID, bookingID, guestName, guestEmail, guestPhone) VALUES(4, 4, 'Harry Potter', 'quidditch@hogwarts.owl', '0833568615');
INSERT INTO COVID (tableID, bookingID, guestName, guestEmail, guestPhone) VALUES(5, 5, 'Hermione Granger', 'ilovebooks@hogwarts.owl', '0833568616');
INSERT INTO COVID (tableID, bookingID, guestName, guestEmail, guestPhone) VALUES(6, 6, 'Harry Potter', 'quidditch@hogwarts.owl', '0833568615');


-- Q1. Delete query

DELETE FROM Waiters
WHERE branchID = 4;

SELECT * FROM Waiters; 

-- Q2. Selection query using 'CASE' statement

Select tableType, tableLocation,
CASE
WHEN tableType <= 4 then 'Small Table'
WHEN tableType > 5 then 'Big Table'
END tableSize
FROM Tables;

-- Q3. Inner join using Group function to retrieve waiters with assigned orders/bookings

SELECT Waiters.waiterID, Waiters.waiterName, Bookings.custID
FROM Waiters
INNER JOIN Bookings ON Waiters.bookingID = Bookings.bookingID
GROUP BY Waiters.waiterID, Waiters.waiterName, Bookings.custID;


-- Q4. Left Outer Join

SELECT Waiters.waiterID, Waiters.waiterName, Bookings.custID
FROM Waiters
LEFT JOIN Bookings ON Waiters.bookingID = Bookings.bookingID;

-- Q5. Right Outer Join

SELECT Branches.branchAddress, Managers.managerID, Managers.managerName
FROM Branches
RIGHT JOIN Managers ON Branches.branchID = Managers.branchID;

-- Q6. Union Operator

SELECT branchAddress
FROM Branches
UNION
SELECT managerName
FROM Managers
UNION
SELECT waiterName
FROM Waiters;

-- Q7. Intersect Operator

SELECT managerAddress
FROM Managers
INTERSECT
SELECT waiterAddress
FROM Waiters;

-- Q8. CREATE VIEW (Stores customer contact details)

CREATE VIEW customer_contact_details AS
SELECT custName, custEmail, custAddress
FROM Customers;

SELECT * FROM customer_contact_details;