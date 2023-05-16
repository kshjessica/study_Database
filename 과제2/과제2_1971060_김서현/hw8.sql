SELECT COUNT(constructor) FROM Constructors WHERE engine = 'Ferrari';

SELECT AVG(races_entered) FROM Constructors WHERE country = 'British';

SELECT constructor, COUNT(*) FROM Results
INNER JOIN Drivers ON Results.driver = Drivers.name
WHERE race_rank = 'first place' GROUP BY constructor;