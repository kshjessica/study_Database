SELECT constructor FROM Drivers AS D WHERE EXISTS (
SELECT * FROM Results AS R
WHERE R.race_rank = 'first place' AND R.driver = D.name
);

SELECT name FROM Drivers WHERE constructor = ANY (
SELECT constructor FROM Constructors
WHERE engine = 'Mercedes'
);

SELECT race FROM Results WHERE driver = SOME (
SELECT name FROM Drivers WHERE constructor = 'Ferrari'
);
