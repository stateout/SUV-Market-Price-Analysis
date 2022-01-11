-- Basic selecting the dataset table that had been imported into the database -- 

SELECT * FROM SUVTruckInfo

-- Correcting inaccurate data where the Jeep Grand Cherokee was mistakenly classified as a compact SUV instead of mid-size -- 

UPDATE SUVTruckInfo
SET Vehicle_Class = 'Mid-size' 
WHERE Automaker = 'Jeep' AND Model = '%Grand Cherokee%'

