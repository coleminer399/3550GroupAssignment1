CREATE TABLE Console (
    ConsoleID int IDENTITY(1,10) PRIMARY KEY NOT NULL,
    ManufacturerID int IDENTITY(1,10) FORIEGN KEY NOT NULL,
    ConsoleName varchar(255)
);

CREATE TABLE Manufacturer (
    ManufacturerID int IDENTITY(1,10) PRIMARY KEY NOT NULL,
    ManufacturerName varchar(255)
);

<<<<<<< HEAD
INSERT @Manufacturer (ManufacturerID, ManufacturerName) VALUES ('1','Sony')
INSERT @Manufacturer (ManufacturerID, ManufacturerName) VALUES ('2','Nintendo')
INSERT @Manufacturer (ManufacturerID, ManufacturerName) VALUES ('3','Microsoft')
INSERT @Manufacturer (ManufacturerID, ManufacturerName) VALUES ('4','Sega')
INSERT @Manufacturer (ManufacturerID, ManufacturerName) VALUES ('5','Atari')
INSERT @Manufacturer (ManufacturerID, ManufacturerName) VALUES ('6','Bandai')

INSERT @Console (ConsoleID, ManufacturerID, ConsoleName) VALUES ('500','4','Sega Genesis')
INSERT @Console (ConsoleID, ManufacturerID, ConsoleName) VALUES ('501','1','PlayStation ')
INSERT @Console (ConsoleID, ManufacturerID, ConsoleName) VALUES ('502','1','PlayStation 1')
INSERT @Console (ConsoleID, ManufacturerID, ConsoleName) VALUES ('503','1','PlayStation 2')
INSERT @Console (ConsoleID, ManufacturerID, ConsoleName) VALUES ('504','1','PlayStation 3')
INSERT @Console (ConsoleID, ManufacturerID, ConsoleName) VALUES ('505','1','PlayStation 4')
INSERT @Console (ConsoleID, ManufacturerID, ConsoleName) VALUES ('506','3','Xbox')
INSERT @Console (ConsoleID, ManufacturerID, ConsoleName) VALUES ('507','3','Xbox 360')
INSERT @Console (ConsoleID, ManufacturerID, ConsoleName) VALUES ('508','3','Xbox One')
INSERT @Console (ConsoleID, ManufacturerID, ConsoleName) VALUES ('509','5','Atari 2600')
INSERT @Console (ConsoleID, ManufacturerID, ConsoleName) VALUES ('510','5','Atari Lynx')
INSERT @Console (ConsoleID, ManufacturerID, ConsoleName) VALUES ('511','5','Atari 5200')
INSERT @Console (ConsoleID, ManufacturerID, ConsoleName) VALUES ('512','2','Game Cube')
INSERT @Console (ConsoleID, ManufacturerID, ConsoleName) VALUES ('513','2','Wii')
INSERT @Console (ConsoleID, ManufacturerID, ConsoleName) VALUES ('514','2','Wii U')
INSERT @Console (ConsoleID, ManufacturerID, ConsoleName) VALUES ('515','2','Game Boy')
INSERT @Console (ConsoleID, ManufacturerID, ConsoleName) VALUES ('516','2','Game Boy Color')
INSERT @Console (ConsoleID, ManufacturerID, ConsoleName) VALUES ('517','1','PlayStation Vita')
INSERT @Console (ConsoleID, ManufacturerID, ConsoleName) VALUES ('518','2','Super Nintendo')
INSERT @Console (ConsoleID, ManufacturerID, ConsoleName) VALUES ('519','2','Nintendo DS')
INSERT @Console (ConsoleID, ManufacturerID, ConsoleName) VALUES ('520','2','Nintendo 3DS')
INSERT @Console (ConsoleID, ManufacturerID, ConsoleName) VALUES ('521','2','Nintendo Entertainment System')
INSERT @Console (ConsoleID, ManufacturerID, ConsoleName) VALUES ('522','2','Nintendo 64')
=======
>>>>>>> master
