-- Designing Databases Final Project

USE supply_chain;

SELECT managerName, numberOfEmployees, openingYear
FROM Warehouses
WHERE warehouseID = 'LandPort';

SELECT orderID, customerName, zip_code
FROM Orders;

-- Aggregate Query with Grouping
SELECT WarehouseID, COUNT(OrderID) AS TotalOrders
FROM Orders
GROUP BY WarehouseID;

-- Sub-Query
SELECT OrderID, customerName
FROM Orders
WHERE OrderID IN (
	SELECT OrderID 
	FROM Boxes
    WHERE BoxID = 1075);

-- Dimensional Weight Query
SELECT BoxID, length, width, height, (length * width * height) / 139 AS DimensionalWeight
FROM Boxes;

--  5 JOIN Querires

SELECT w.warehouseID, o.orderID, o.customerName
FROM Warehouses w
JOIN Orders o ON o.warehouseID = w.warehouseID
WHERE o.orderID = 001308;

SELECT o.customerName, w.managerName
FROM Orders o
JOIN Warehouses w ON o.warehouseID = w.warehouseID;

SELECT o.OrderID, w.warehouseID, w.state
FROM Orders o
JOIN Warehouses w ON o.warehouseID = w.warehouseID;

SELECT b.boxID, o.streetAddress, o.zip_code, w.managerName
FROM Boxes b
JOIN Orders o ON b.orderID = o.orderID
JOIN Warehouses w ON o.warehouseID = w.warehouseID;

SELECT b.boxID, b.weight, o.orderID, w.warehouseID
FROM Boxes b
JOIN Orders o ON b.orderID = o.orderID
JOIN Warehouses w ON o.warehouseID = w.warehouseID;












