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

-- Query used to find the top 5 cheapest vehicles in the dataset -- 

SELECT TOP(5) * FROM VehiclePriceComparison.dbo.SUVTruckInfo
ORDER BY Base_Price ASC

/* This query showed that the 5 cheapest vehicles were the Hyundai Venue, Nissan Kicks, Kia Soul and Seltos, and the Toyota CH-R. The query also showed these
5 vehicles in ascending order based on base price. */

-- Query used to find all American automakers listed in the database --

SELECT * FROM VehiclePriceComparison.dbo.SUVTruckInfo
WHERE Automaker ='Ford' OR Automaker = 'Chevrolet' OR Automaker = 'Dodge' OR Automaker = 'Jeep'



