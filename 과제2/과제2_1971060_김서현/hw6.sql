SELECT D.name FROM Drivers AS D, Constructors AS C
WHERE (
C.country = 'Italian'
AND C.constructor = D.constructor)
;

SELECT DISTINCT(D.name) FROM Drivers AS D, Results AS R
WHERE (
R.driver = D.name
AND R.Race='Spanish Grand Prix'
OR D.constructor='BMW Sauber'
);

SELECT C1.country FROM constructors C1
INNER JOIN constructors C2
ON C2.country = C1.country
AND C2.engine = 'Mercedes'
WHERE C1.engine='Cosworth';