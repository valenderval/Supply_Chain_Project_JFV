
INSERT INTO Warehouses (warehouseID, city, state, managerName, numberOfEmployees, storageCapacity, openingYear)
VALUES

('RiverPort', 'Louisville', 'Kentucky', 'Stephanie Prince', '74', '1000', '2014-01-01'),
('OceanPort', 'San Francisco', 'California', 'Bob Olsen', '60', '755', '2012-01-01'),
('LandPort', 'Dallas', 'Texas', 'Susan Jefferies', '113', '3000', '2007-01-01'),
('NorthernPort', 'Pittsburg', 'Pennysylvania', 'Mary Smith', '97', '1400', '2012-01-01'),
('SouthernPort', 'Atlanta', 'Georgia', 'Daniel Steward', '85', '600', '2009-01-01');

INSERT INTO Orders (orderID, customerName, streetAddress, city, state, zip_code, warehouseID)
VALUES

('001308', 'Marc Mullins', '147 Parkline Dr.', 'Evansville', 'Indiana', '47702', 'RiverPort'),
('0017012', 'Emma Wilson', '1170 Washington St.', 'Cincinati', 'Ohio', '45201', 'NorthernPort'),
('0013078', 'Jane Smith', '808 Milky Way', 'Terrance', 'Nevada', '30820', 'OceanPort'),
('0013110', 'Alfred Cara', '123 This Rd.', 'Sydney', 'Michigan', '71475', 'NorthernPort'),
('0078520', 'Helen Charles', '798 Oak St.', 'Tampa', 'Florida', '50541', 'SouthernPort'),
('0020123', 'James Johnson', '1313 Stanley Dr.', 'Houston', 'Texas', '45021', 'LandPort'),
('0020124', 'Stewart Anderson', '545 Parkway Dr.', 'Dallas', 'Texas', '45714', 'LandPort'),
('0013240', 'Stephanie Jones', '567 Overhere St.', 'Cincinatti', 'Ohio', '45213', 'RiverPort'),
('0017101', 'Brooke Marshall', '321 ALphabet Ln.', 'Townsville', 'Maine', '55121', 'NorthernPort'),
('0013002', 'Paul Knight', '810 Decimal Dr.', 'Los Angelas', 'California', '34658', 'OceanPort');



INSERT INTO Boxes (boxID, height, width, length, weight, orderID, warehouseID)
VALUES

('1075', '6', '6', '4', '1.1', '0013002', 'OceanPort'),
('2065', '10', '6', '4', '3.4', '0013002', 'OceanPort'),
('1060', '6', '6', '4', '1.0', '0020123', 'LandPort'),
('1020', '6', '6', '4', '2.2', '0017101', 'NorthernPort'),
('3078', '17', '11', '11', '4.5', '001308', 'RiverPort'),
('2091', '10', '6', '4', '2.5', '0017012', 'NorthernPort'),
('1002', '6', '6', '4', '1.0', '0013078', 'OceanPort'),
('2064', '10', '6', '4', '3.0', '0013110', 'NorthernPort'),
('3034', '17', '11', '11', '5.0', '0078520', 'SouthernPort'),
('1004', '6', '6', '4', '0.89', '0020123', 'LandPort'),
('2050', '10', '6', '4', '3.2', '0020123', 'LandPort'),
('3050', '17', '11', '11', '4.2', '0020124', 'LandPort'),
('4010', '20', '20', '4', '4.5', '0020124', 'LandPort'),
('1030', '6', '6', '4', '0.89', '0020124', 'LandPort'),
('4012', '20', '20', '4', '1.5', '0013240', 'RiverPort'),
('1027', '6', '6', '4', '1.1', '0017101', 'NorthernPort'),
('2032', '10', '6', '4', '2.2', '0013002', 'OceanPort'),
('1080', '6', '6', '4', '1.0', '0078520', 'SouthernPort'),
('2052', '10', '6', '4', '5.0', '0078520', 'SouthernPort'),
('1083', '6', '6', '4', '2.0', '0020123', 'LandPort');



