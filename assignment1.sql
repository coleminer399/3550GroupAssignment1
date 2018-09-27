CREATE TABLE Console (
    ConsoleID int IDENTITY(1,10) PRIMARY KEY NOT NULL,
    ManufacturerID int IDENTITY(1,10) FORIEGN KEY NOT NULL,
    ConsoleName varchar(255)
);

CREATE TABLE Manufacturer (
    ManufacturerID int IDENTITY(1,10) PRIMARY KEY NOT NULL,
    ManufacturerName varchar(255)
);

