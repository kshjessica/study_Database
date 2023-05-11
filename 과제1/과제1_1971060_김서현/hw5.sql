SELECT * FROM Constructors;
ALTER TABLE Constructors DROP races_entered;
-- View Changes
SELECT * FROM Constructors;

SELECT * FROM Constructors;
ALTER TABLE Constructors ADD tire varchar(30);
UPDATE Constructors SET tire = 'Korean company';
-- View Changes
SELECT * FROM Constructors;