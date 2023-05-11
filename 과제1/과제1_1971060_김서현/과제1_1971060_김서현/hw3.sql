SELECT constructor, country
FROM Constructors
WHERE races_entered > 100;

SELECT constructor, engine, races_entered
FROM Constructors
WHERE height != 95 AND width < 180
ORDER BY engine ASC, races_entered ASC;

SELECT *
FROM Constructors
WHERE engine = 'Ferrari';

SELECT names AS newBoys
FROM Drivers
WHERE YEAR(birthday) > 1980;

SELECT race, driver
FROM Results
WHERE race_rank = 'first place';

SELECT name
FROM Races
WHERE area = 'Europe'
ORDER BY name ASC;