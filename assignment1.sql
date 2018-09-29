CREATE TABLE Console (
    ConsoleID int IDENTITY(1,10) PRIMARY KEY NOT NULL,
    ManufacturerID int IDENTITY(1,10) FOREIGN KEY NOT NULL,
    ConsoleName varchar(255)
);

CREATE TABLE Manufacturer (
    ManufacturerID int IDENTITY(1,10) PRIMARY KEY NOT NULL,
    ManufacturerName varchar(255)
);

CREATE TABLE ESRB (
    RatingID int IDENTITY(1,10) PRIMARY KEY NOT NULL,
    ESRBname varchar(10)
);

CREATE TABLE Genre (
    GenreID int IDENTITY(1,10) PRIMARY KEY NOT NULL,
    GenreName varchar(255)
);

CREATE TABLE Games (
    GameID int IDENTITY(1,10) PRIMARY KEY NOT NULL,
    GameName varchar(255),
    GenreID int FOREIGN KEY NOT NULL,
    RattingID int FOREIGN KEY NOT NULL,
    IsOnline bit DEFAULT 0
);

INSERT Manufacturer (ManufacturerID, ManufacturerName) VALUES ('1','Sony')
INSERT Manufacturer (ManufacturerID, ManufacturerName) VALUES ('2','Nintendo')
INSERT Manufacturer (ManufacturerID, ManufacturerName) VALUES ('3','Microsoft')
INSERT Manufacturer (ManufacturerID, ManufacturerName) VALUES ('4','Sega')
INSERT Manufacturer (ManufacturerID, ManufacturerName) VALUES ('5','Atari')
INSERT Manufacturer (ManufacturerID, ManufacturerName) VALUES ('6','Bandai')

INSERT Console (ConsoleID, ManufacturerID, ConsoleName) VALUES ('500','4','Sega Genesis')
INSERT Console (ConsoleID, ManufacturerID, ConsoleName) VALUES ('501','1','PlayStation ')
INSERT Console (ConsoleID, ManufacturerID, ConsoleName) VALUES ('502','1','PlayStation 1')
INSERT Console (ConsoleID, ManufacturerID, ConsoleName) VALUES ('503','1','PlayStation 2')
INSERT Console (ConsoleID, ManufacturerID, ConsoleName) VALUES ('504','1','PlayStation 3')
INSERT Console (ConsoleID, ManufacturerID, ConsoleName) VALUES ('505','1','PlayStation 4')
INSERT Console (ConsoleID, ManufacturerID, ConsoleName) VALUES ('506','3','Xbox')
INSERT Console (ConsoleID, ManufacturerID, ConsoleName) VALUES ('507','3','Xbox 360')
INSERT Console (ConsoleID, ManufacturerID, ConsoleName) VALUES ('508','3','Xbox One')
INSERT Console (ConsoleID, ManufacturerID, ConsoleName) VALUES ('509','5','Atari 2600')
INSERT Console (ConsoleID, ManufacturerID, ConsoleName) VALUES ('510','5','Atari Lynx')
INSERT Console (ConsoleID, ManufacturerID, ConsoleName) VALUES ('511','5','Atari 5200')
INSERT Console (ConsoleID, ManufacturerID, ConsoleName) VALUES ('512','2','Game Cube')
INSERT Console (ConsoleID, ManufacturerID, ConsoleName) VALUES ('513','2','Wii')
INSERT Console (ConsoleID, ManufacturerID, ConsoleName) VALUES ('514','2','Wii U')
INSERT Console (ConsoleID, ManufacturerID, ConsoleName) VALUES ('515','2','Game Boy')
INSERT Console (ConsoleID, ManufacturerID, ConsoleName) VALUES ('516','2','Game Boy Color')
INSERT Console (ConsoleID, ManufacturerID, ConsoleName) VALUES ('517','1','PlayStation Vita')
INSERT Console (ConsoleID, ManufacturerID, ConsoleName) VALUES ('518','2','Super Nintendo')
INSERT Console (ConsoleID, ManufacturerID, ConsoleName) VALUES ('519','2','Nintendo DS')
INSERT Console (ConsoleID, ManufacturerID, ConsoleName) VALUES ('520','2','Nintendo 3DS')
INSERT Console (ConsoleID, ManufacturerID, ConsoleName) VALUES ('521','2','Nintendo Entertainment System')
INSERT Console (ConsoleID, ManufacturerID, ConsoleName) VALUES ('522','2','Nintendo 64')


INSERT ESRB(ESRB) VALUES ('E')
INSERT ESRB(ESRB) VALUES ('E 10+')
INSERT ESRB(ESRB) VALUES ('T')
INSERT ESRB(ESRB) VALUES ('M')
INSERT ESRB(ESRB) VALUES ('KA')

INSERT Genre(GenreName) VALUES ('Action')
INSERT Genre(GenreName) VALUES ('Adventure')
INSERT Genre(GenreName) VALUES ('Role Play')
INSERT Genre(GenreName) VALUES ('Strategy')
INSERT Genre(GenreName) VALUES ('Platform')
INSERT Genre(GenreName) VALUES ('Sports')
INSERT Genre(GenreName) VALUES ('Shooter')
INSERT Genre(GenreName) VALUES ('Music')
INSERT Genre(GenreName) VALUES ('Racing')
INSERT Genre(GenreName) VALUES ('Fighting')


INSERT Games (GameID, GameName, GenreID, RatingID,IsOnline) VALUES ('1','Missile Command','2','1','0')
INSERT Games (GameID, GameName, GenreID, RatingID,IsOnline) VALUES ('2','Crash Bandicoot','5','5','0')
INSERT Games (GameID, GameName, GenreID, RatingID,IsOnline) VALUES ('3','Star Wars Battlefront','7','3','0')
INSERT Games (GameID, GameName, GenreID, RatingID,IsOnline) VALUES ('4','Final Fantasy XV','3','3','0')
INSERT Games (GameID, GameName, GenreID, RatingID,IsOnline) VALUES ('5','Halo Reach','7','4','1')
INSERT Games (GameID, GameName, GenreID, RatingID,IsOnline) VALUES ('6','Guitar Hero: On Tour','8','2','0')
INSERT Games (GameID, GameName, GenreID, RatingID,IsOnline) VALUES ('7','Monster Hunter World','3','3','1')
INSERT Games (GameID, GameName, GenreID, RatingID,IsOnline) VALUES ('8','Mario Kart Wii','9','1','1')
INSERT Games (GameID, GameName, GenreID, RatingID,IsOnline) VALUES ('9','Left 4 Dead','7','4','1')
INSERT Games (GameID, GameName, GenreID, RatingID,IsOnline) VALUES ('10','Skyrim ','3','4','0')
INSERT Games (GameID, GameName, GenreID, RatingID,IsOnline) VALUES ('11','Destiny','7','3','1')
INSERT Games (GameID, GameName, GenreID, RatingID,IsOnline) VALUES ('12','Super Smash Bros. Brawl','10','3','1')
INSERT Games (GameID, GameName, GenreID, RatingID,IsOnline) VALUES ('13','Sonic The Hedgehog','5','1','0')
INSERT Games (GameID, GameName, GenreID, RatingID,IsOnline) VALUES ('14','Zelda Link\'s Awakening','2','1','0')
INSERT Games (GameID, GameName, GenreID, RatingID,IsOnline) VALUES ('15','Donkey Kong 64','5','1','0')
INSERT Games (GameID, GameName, GenreID, RatingID,IsOnline) VALUES ('16','Last of Us ','2','4','0')
