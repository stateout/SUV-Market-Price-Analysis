-- Querying the table SUVTruckinfo where information about vehicle make, vehicle type and class, model, and price can be found

SELECT * FROM SUVTruckInfo

-- During data cleaning step, inaccurate data had been found in the Vehicle Class column for the Automaker: Jeep; and Model: Grand Cherokee. To fix this,
the following code was used

UPDATE SUVTruckInfo
SET Vehicle_Class='Mid-size'
WHERE Automaker = 'Jeep' AND Model = 'Grand Cherokee'

-- 
