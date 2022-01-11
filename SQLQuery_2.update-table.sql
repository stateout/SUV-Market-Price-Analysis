-- To query the data set created --

SELECT * FROM SUVTruckInfo

-- To correct for inaccurate data found under the Vehicle Class column found for the Jeep Grand Cherokee, the following querying was used --

UPDATE SUVTruckInfo
SET Vehicle_Class='Mid-size' 
WHERE Model='Grand Cherokee' AND Automaker='Jeep'
