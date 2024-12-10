DROP DATABASE IF EXISTS supply_chain;

CREATE DATABASE supply_chain;

USE supply_chain;

-- Warehouses
CREATE TABLE Warehouses (
	warehouseID VARCHAR(100) PRIMARY KEY,
    city VARCHAR(100),
    state VARCHAR(50),
    managerName VARCHAR(100),
    numberOfEmployees INT,
    storageCapacity INT,
    openingYear date
);

-- Orders
CREATE TABLE Orders (
	orderID INT PRIMARY KEY,
    customerName VARCHAR(100),
    streetAddress VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(50),
    zip_code VARCHAR(10),
    warehouseID VARCHAR(100),
    FOREIGN KEY (warehouseID) REFERENCES Warehouses(warehouseID)
);

CREATE TABLE Boxes (
	boxID INT PRIMARY KEY,
    height INT,
    width INT,
    length INT,
    weight INT,
    orderID INT,
    warehouseID VARCHAR(100),
    FOREIGN KEY (orderID) REFERENCES Orders(orderID),
    FOREIGN KEY (warehouseID) REFERENCES Warehouses(warehouseID)
);


