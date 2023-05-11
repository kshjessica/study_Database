CREATE TABLE Constructors (
     constructor VARCHAR(50) PRIMARY KEY,
     engine VARCHAR(50),
     country VARCHAR(50),
     races_entered INT,
     height INT,
     width INT
);

DESCRIBE Constructors;

CREATE TABLE Drivers (
     name VARCHAR(50) PRIMARY KEY,
     birthday DATE,
     country VARCHAR(50),
     constructor VARCHAR(50),
     FOREIGN KEY (constructor) REFERENCES Constructors(constructor)
);

DESCRIBE Drivers;

CREATE TABLE Races (
     name VARCHAR(50) PRIMARY KEY,
     beginDate DATE,
     area VARCHAR(50)
);

DESCRIBE Races;

CREATE TABLE Results (
     race VARCHAR(50),
     driver VARCHAR(50),
     race_rank VARCHAR(255),
     PRIMARY KEY (race, driver),
     FOREIGN KEY (race) REFERENCES Races(name),
     FOREIGN KEY (driver) REFERENCES Drivers(name)
);

DESCRIBE Results;
