USE TableRealtionDemo

SELECT * FROM Cars
  JOIN Drivers ON Drivers.Id = Cars.DriverId

SELECT c.Name, d.Name 
  FROM Cars AS c
  JOIN Drivers AS d ON d.Id = c.DriverId

USE Geography

  SELECT m.MountainRange, 
         p.PeakName,
	     p.Elevation 
    FROM Mountains as m
    JOIN Peaks AS p ON p.MountainId = m.Id
   WHERE m.MountainRange = 'Rila'
ORDER BY p.Elevation DESC

--SELECT * FROM Peaks