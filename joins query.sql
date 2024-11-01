create database tour
use tour;
CREATE TABLE Customer (
    ID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    CustomerName NVARCHAR(50),
    Email VARCHAR(50)
);


INSERT INTO Customer (CustomerName, Email) VALUES ('ayesha', 'aish23@gmail.com');
INSERT INTO Customer (CustomerName, Email) VALUES ('maha', 'maha64@gmail.com');
INSERT INTO Customer (CustomerName, Email) VALUES ('neha', 'neha12@gmail.com');
INSERT INTO Customer (CustomerName, Email) VALUES ('nimra', 'nimra45@gmail.com');

SELECT * FROM Customer;


CREATE TABLE Venues (
 VenueId INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
--VenueID int foreign key references  Customer (VenueID),
    VenueName VARCHAR(50),
    Location VARCHAR(50)
);

INSERT INTO Venues VALUES (' Saint-Denis ', 'Eiffel Tower');
INSERT INTO Venues VALUES ('Orleans',  'City Park');
INSERT INTO Venues VALUES ('Fandom',  'OpenArena');
INSERT INTO Venues VALUES ('downtown Doha',  'Mall of Qatar');
select*from Venues;

CREATE TABLE Destinations (
--DestinationID int foreign key references Venues(DestinationID),
DestionationID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
Venue_ID int foreign key references Venues(VenueId),
    DestinationName VARCHAR(50),
    Country NVARCHAR(50)
);
INSERT INTO Destinations VALUES ('2','Tokyo tower', 'Tokyo');
INSERT INTO Destinations VALUES ('1','Saint-Denis', 'Paris');
INSERT INTO Destinations VALUES ('4','camdet', 'London');
INSERT INTO Destinations VALUES ('3','downtown', 'Qatar');
select*from  Destinations;