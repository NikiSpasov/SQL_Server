USE Geography

SELECT MountainRange, PeakName, Elevation
FROM Peaks AS p
JOIN Mountains AS m ON p.MountainId = m.Id
WHERE MountainRange = 'RILA'
ORDER BY p.Elevation DESC
