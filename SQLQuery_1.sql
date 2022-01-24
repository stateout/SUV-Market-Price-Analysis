/* 

Note: Microsoft Azure Data Studio was used to perform all the following queries.
Database Name: VehiclePriceComparison 
Table Name: SUVTruckInfo 

*/ 

-- Query used to view the dataset table that had been imported into the database -- 

SELECT * FROM VehiclePriceComparison.dbo.SUVTruckInfo

-- Query used to correct inaccurate data where the Jeep Grand Cherokee was mistakenly classified as a compact SUV instead of mid-size -- 

UPDATE VehiclePriceComparison.dbo.SUVTruckInfo
SET Vehicle_Class = 'Mid-size' 
WHERE Automaker = 'Jeep' AND Model = 'Grand Cherokee'

-- Alternatively, the following query would also work --

UPDATE VehiclePriceComparison.dbo.SUVTruckInfo
SET Vehicle_Class = 'Mid-size'
WHERE Automaker LIKE 'JE%' AND Model LIKE 'Grand%'

-- Query used to insert a new row of data into the existing table --

INSERT INTO VehiclePriceComparison.dbo.SUVTruckInfo
(Automaker, Vehicle_Type, Vehicle_Class, Model, Year, Trim, Base_Price, Fuel_Type)
VALUES 
('Ram', 'Truck', 'Full-size','1500','2022','Big Horn','60685','Gasoline')

/* This query was used because of incomplete data. There was no data on Ram trucks despite having all other pick-up truck data available. */

-- Query used to find the top 5 cheapest vehicles in the dataset -- 

SELECT TOP(5) * FROM VehiclePriceComparison.dbo.SUVTruckInfo
ORDER BY Base_Price ASC

/* This query showed that the 5 cheapest vehicles were the Hyundai Venue, Nissan Kicks, Kia Soul and Seltos, and the Toyota CH-R. The query also showed these
5 vehicles in ascending order based on base price. */

-- Query used to find all American automakers listed in the database --

SELECT * FROM VehiclePriceComparison.dbo.SUVTruckInfo
WHERE Automaker IN ('Ford', 'Chevrolet', 'Dodge', 'Ram', 'Jeep')

-- Query was used to fill in an empty column called Fuel_Type --

UPDATE VehiclePriceComparison.dbo.SUVTruckInfo
SET Fuel_Type = 'Gasoline' 
WHERE Fuel_Type IS NULL

/* Since all vehicles in the SUVTruckInfo table are gasoline vehicles, the Fuel_Type column could easily be corrected by mass.
However, if for example the Ford Escape 2022 SEL were Hybrid, we would use the following query below */

UPDATE VehiclePriceComparison.dbo.SUVTruckInfo
SET Fuel_Type = 'Hybrid' 
WHERE Model = 'Escape' AND Trim = 'SEL' AND Year = '2022'

-- Now to create a new table that provides information about which countries each automaker belongs to we would use the following query --

CREATE TABLE VehiclePriceComparison.dbo.AutomakerByCountry
(Country nvarchar(50), Automaker nvarchar(50))

INSERT INTO 







