SELECT * FROM Drivers;
-- Insert new Drivers ‘Russell’ And ‘Villeneuve’
INSERT INTO Drivers (name, birthday, country, constructor) VALUES
     ('Russell', '1998-02-15', 'British', 'BMW Sauber'),
     ('Villeneuve', '1971-04-09', 'Canadian', 'BMW Sauber');
-- View Changes
SELECT * FROM Drivers;

SELECT * FROM Constructors;
-- Insert New Constructor ‘Sauber’
INSERT INTO Constructors (constructor, country, engine, races_entered, height, width) VALUES
     ('Sauber', 'Swiss', 'Mercedes', '0', '93', '180');
-- View Change
SELECT * FROM Constructors;

SELECT * FROM Drivers; 
-- Insert New Driver ‘Frentzen’
INSERT INTO Drivers (name, birthday, country, constructor) VALUES
     ('Frentzen', '1967-05-18', 'German', 'Sauber');
-- View Change
SELECT * FROM Drivers;

-- Create Table to Store Drivers Who Won Third Places
CREATE TABLE DriversInThird (
     name varchar(50) PRIMARY KEY,
     race varchar(30)
);
-- Insert Drivers Who Won Third Places
INSERT INTO DriversInThird (
     SELECT driver, race
     FROM Results
     WHERE race_rank = 'third place' AND Race IN (
          SELECT name
          FROM Races
          WHERE area = 'Asia'
     )
);
-- View Current Data
SELECT * FROM Drivers;
SELECT * FROM Results;
-- Delete Data 
DELETE FROM Results WHERE driver IN (
     SELECT driver FROM DriversInThird
);
DELETE FROM Drivers WHERE name IN (
     SELECT driver FROM DriversInThird
);
-- View Changes
SELECT * FROM Drivers;
SELECT * FROM Results;

SELECT * FROM Results;
-- Update Dropouts
UPDATE Results SET race_rank = 'drop out' WHERE driver IN (
     SELECT name FROM Drivers WHERE constructor IN (
          SELECT constructor FROM Constructors
     WHERE engine = 'Honda'
)
);
-- View Changes
SELECT * FROM Results;