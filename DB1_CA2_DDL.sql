DROP TABLE COVID;
DROP TABLE Waiters;
DROP TABLE Managers;
DROP TABLE Tables;
DROP TABLE Bookings;
DROP TABLE Customers;
DROP TABLE Branches;

CREATE TABLE Branches (
  branchID NUMBER NOT NULL,
  branchAddress VARCHAR(200) UNIQUE NOT NULL,
  branchPhone VARCHAR(20) UNIQUE NOT NULL,
  CONSTRAINT branches_pk PRIMARY KEY (branchID)
);

CREATE TABLE Customers (
  custID NUMBER NOT NULL,
  custName VARCHAR(100) NOT NULL,
  custAddress VARCHAR(200) NOT NULL,
  custEmail VARCHAR(100) UNIQUE NOT NULL,
  custAge NUMBER NOT NULL,
  CONSTRAINT customers_pk PRIMARY KEY (custID),
  CONSTRAINT custAge_chk CHECK(custAge >= 18)
);

CREATE TABLE Bookings (
  bookingID NUMBER NOT NULL,
  custID NUMBER NOT NULL,
  branchID NUMBER NOT NULL,
  guestAmount NUMBER NOT NULL,
  bookingTime VARCHAR(12) NOT NULL,
  bookingType VARCHAR(10) NOT NULL,
  CONSTRAINT bookings_pk PRIMARY KEY (bookingID),
  CONSTRAINT bookings_branches_fk FOREIGN KEY (branchID) REFERENCES Branches(branchID),
  CONSTRAINT bookings_customers_fk FOREIGN KEY (custID) REFERENCES Customers(custID),
  CONSTRAINT guestAmt_chk CHECK (guestAmount BETWEEN 1 AND 8),
  CONSTRAINT bookingType_chk CHECK(bookingType IN('Walk-in', 'Online', 'Phone'))
);

CREATE TABLE Tables (
  tableID NUMBER NOT NULL,
  bookingID NUMBER NOT NULL,
  tableType NUMBER NOT NULL,
  tableLocation VARCHAR(10) NOT NULL,
  CONSTRAINT tables_pk PRIMARY KEY (tableID),
  CONSTRAINT tables_bookings_fk FOREIGN KEY (bookingID) REFERENCES Bookings (bookingID),
  CONSTRAINT tableType_chk CHECK(tableType IN(2, 4, 6, 8)),
  CONSTRAINT tableLocation_chk CHECK(tableLocation IN('Interior', 'Window'))
);

CREATE TABLE Managers (
  managerID NUMBER NOT NULL,
  branchID NUMBER NOT NULL,
  bookingID NUMBER NULL,
  managerName VARCHAR(100) NOT NULL,
  managerAddress VARCHAR(200) NOT NULL,
  managerPhone VARCHAR(20) UNIQUE NULL,
  managerEmail VARCHAR(100) UNIQUE NOT NULL,
  managerDOB VARCHAR(12) NOT NULL,
  managerStartDate VARCHAR(12) NOT NULL,
  CONSTRAINT managers_pk PRIMARY KEY (managerID),
  CONSTRAINT managers_branches_fk FOREIGN KEY (branchID) REFERENCES Branches (branchID),
  CONSTRAINT managers_bookings_fk FOREIGN KEY (bookingID) REFERENCES Bookings (bookingID),
  CONSTRAINT managerEmail_chk CHECK(managerEmail LIKE '___%@burgershack.com%')
);

CREATE TABLE Waiters (
  waiterID NUMBER NOT NULL,
  branchID NUMBER NOT NULL,
  bookingID NUMBER NULL,
  waiterName VARCHAR(100) NOT NULL,
  waiterAddress VARCHAR(200) NOT NULL,
  waiterPhone VARCHAR(20) UNIQUE NOT NULL,
  waiterEmail VARCHAR(100) UNIQUE NOT NULL,
  waiterDOB VARCHAR(12) NOT NULL,
  waiterStartDate VARCHAR(12) NOT NULL,
  CONSTRAINT waiters_pk PRIMARY KEY (waiterID),
  CONSTRAINT waiters_branches_fk FOREIGN KEY (branchID) REFERENCES Branches (branchID),
  CONSTRAINT waiters_bookings_fk FOREIGN KEY (bookingID) REFERENCES Bookings (bookingID),
  CONSTRAINT waiterEmail_chk CHECK(waiterEmail LIKE '___%@burgershack.com%')
);

CREATE TABLE COVID (
  tableID NUMBER NOT NULL,
  bookingID NUMBER NOT NULL,
  guestName VARCHAR(100) NOT NULL,
  guestEmail VARCHAR(100) NOT NULL,
  guestPhone VARCHAR(20) NOT NULL,
  CONSTRAINT covid_pk PRIMARY KEY (tableID, bookingID),
  CONSTRAINT covid_tables_fk FOREIGN KEY (tableID) REFERENCES Tables (tableID),
  CONSTRAINT covid_bookings_fk FOREIGN KEY (bookingID) REFERENCES Bookings (bookingID)
);