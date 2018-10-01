CREATE TABLE Manufacturer (
    ManufacturerID int IDENTITY(1,10) PRIMARY KEY NOT NULL,
    ManufacturerName varchar(255) NOT NULL
);

CREATE TABLE Console (
	ConsoleID int IDENTITY (500,1) PRIMARY KEY NOT NULL,
	ManufacturerID int,
	ConsoleName varchar (255),
	FOREIGN KEY (ManufacturerID) REFERENCES Manufacturer (ManufacturerID)
);


CREATE TABLE ESRB(
	ESRB_ID int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	ESRB char (4) NOT NULL
)


CREATE TABLE Genre(
	GenreID int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	GenreName varchar (255) NOT NULL
)



CREATE TABLE Games(
	GameID int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	GameName varchar (255),
	ESRB_ID int NOT NULL,
	Multiplayer bit NOT NULL,
	IsOnline bit NOT NULL,
	FOREIGN KEY (ESRB_ID) REFERENCES ESRB(ESRB_ID)
)

CREATE TABLE GamesGenre(
	GameGenreID int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	GenreID int,
	GameID int,
	FOREIGN KEY (GenreID) REFERENCES Genre (GenreID),
	FOREIGN KEY (GameID) REFERENCES Games (GameID),
)

CREATE TABLE GameCatalogue(
	CatalogueID int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	GameID int,
	ConsoleID int,
	ESRB_ID int,
	PurchaseDate date NOT NULL,
	Collectable bit DEFAULT 0,
	FOREIGN KEY (GameID) REFERENCES Games(GameID),
	FOREIGN KEY (ConsoleID) REFERENCES Console(ConsoleID),
	FOREIGN KEY (ESRB_ID) REFERENCES ESRB(ESRB_ID)
)

SET IDENTITY_INSERT dbo.Manufacturer ON;
INSERT Manufacturer (ManufacturerID, ManufacturerName) VALUES ('1','Sony')
INSERT Manufacturer (ManufacturerID, ManufacturerName) VALUES ('2','Nintendo')
INSERT Manufacturer (ManufacturerID, ManufacturerName) VALUES ('3','Microsoft')
INSERT Manufacturer (ManufacturerID, ManufacturerName) VALUES ('4','Sega')
INSERT Manufacturer (ManufacturerID, ManufacturerName) VALUES ('5','Atari')
INSERT Manufacturer (ManufacturerID, ManufacturerName) VALUES ('6','Bandai')
SET IDENTITY_INSERT dbo.Manufacturer OFF;


INSERT Console (ManufacturerID, ConsoleName) VALUES ('4','Sega Genesis')								
INSERT Console (ManufacturerID, ConsoleName) VALUES ('1','PlayStation')								
INSERT Console (ManufacturerID, ConsoleName) VALUES ('1','PlayStation 1')								
INSERT Console (ManufacturerID, ConsoleName) VALUES ('1','PlayStation 2')								
INSERT Console (ManufacturerID, ConsoleName) VALUES ('1','PlayStation 3')								
INSERT Console (ManufacturerID, ConsoleName) VALUES ('1','PlayStation 4')								
INSERT Console (ManufacturerID, ConsoleName) VALUES ('3','Xbox')								
INSERT Console (ManufacturerID, ConsoleName) VALUES ('3','Xbox 360')								
INSERT Console (ManufacturerID, ConsoleName) VALUES ('3','Xbox One')								
INSERT Console (ManufacturerID, ConsoleName) VALUES ('5','Atari 2600')								
INSERT Console (ManufacturerID, ConsoleName) VALUES ('5','Atari Lynx')								
INSERT Console (ManufacturerID, ConsoleName) VALUES ('5','Atari 5200')								
INSERT Console (ManufacturerID, ConsoleName) VALUES ('2','Game Cube')								
INSERT Console (ManufacturerID, ConsoleName) VALUES ('2','Wii')								
INSERT Console (ManufacturerID, ConsoleName) VALUES ('2','Wii U')								
INSERT Console (ManufacturerID, ConsoleName) VALUES ('2','Game Boy')								
INSERT Console (ManufacturerID, ConsoleName) VALUES ('2','Game Boy Color')								
INSERT Console (ManufacturerID, ConsoleName) VALUES ('1','PlayStation Vita')								
INSERT Console (ManufacturerID, ConsoleName) VALUES ('2','Super Nintendo')								
INSERT Console (ManufacturerID, ConsoleName) VALUES ('2','Nintendo DS')								
INSERT Console (ManufacturerID, ConsoleName) VALUES ('2','Nintendo 3DS')								
INSERT Console (ManufacturerID, ConsoleName) VALUES ('2','Nintendo Entertainment System')								
INSERT Console (ManufacturerID, ConsoleName) VALUES ('2','Nintendo 64')								
INSERT Console (ManufacturerID, ConsoleName) VALUES ('6','Wonder Swan')			



INSERT ESRB(ESRB) VALUES ('E')
INSERT ESRB(ESRB) VALUES ('E 10+')
INSERT ESRB(ESRB) VALUES ('T')
INSERT ESRB(ESRB) VALUES ('M')
INSERT ESRB(ESRB) VALUES ('KA')



INSERT Genre(GenreName) VALUES ('Role Playing Game')
INSERT Genre(GenreName) VALUES ('Real Time Strategy')
INSERT Genre(GenreName) VALUES ('Turn Based Strategy')
INSERT Genre(GenreName) VALUES ('First Person Shooter')
INSERT Genre(GenreName) VALUES ('Exploration')
INSERT Genre(GenreName) VALUES ('Sandbox')
INSERT Genre(GenreName) VALUES ('Platformer')
INSERT Genre(GenreName) VALUES ('Music')
INSERT Genre(GenreName) VALUES ('Third Person Shooter')
INSERT Genre(GenreName) VALUES ('Puzzle')
INSERT Genre(GenreName) VALUES ('Sports')
INSERT Genre(GenreName) VALUES ('Racing')
INSERT Genre(GenreName) VALUES ('Fighting')



INSERT Games(GameName, ESRB_ID,Multiplayer,IsOnline) VALUES ('Final Fantasy I',2,0,0)
INSERT Games(GameName, ESRB_ID,Multiplayer,IsOnline) VALUES ('Final Fantasy II',3,0,0)
INSERT Games(GameName, ESRB_ID,Multiplayer,IsOnline) VALUES ('Final Fantasy III',1,0,0)
INSERT Games(GameName, ESRB_ID,Multiplayer,IsOnline) VALUES ('Final Fantasy IV',2,0,0)
INSERT Games(GameName, ESRB_ID,Multiplayer,IsOnline) VALUES ('Final Fantasy V',3,0,0)
INSERT Games(GameName, ESRB_ID,Multiplayer,IsOnline) VALUES ('Final Fantasy VI',2,0,0)
INSERT Games(GameName, ESRB_ID,Multiplayer,IsOnline) VALUES ('Final Fantasy VII',3,0,0)
INSERT Games(GameName, ESRB_ID,Multiplayer,IsOnline) VALUES ('Final Fantasy VIII',3,0,0)
INSERT Games(GameName, ESRB_ID,Multiplayer,IsOnline) VALUES ('Final FantasyIX',3,0,0)
INSERT Games(GameName, ESRB_ID,Multiplayer,IsOnline) VALUES ('Final Fantasy X',3,0,0)
INSERT Games(GameName, ESRB_ID,Multiplayer,IsOnline) VALUES ('Final Fantasy XI',3,0,0)
INSERT Games(GameName, ESRB_ID,Multiplayer,IsOnline) VALUES ('Final Fantasy XII',3,0,0)
INSERT Games(GameName, ESRB_ID,Multiplayer,IsOnline) VALUES ('Final Fantasy XIV',3,0,1)
INSERT Games(GameName, ESRB_ID,Multiplayer,IsOnline) VALUES ('Final Fantasy XV',3,0,0)
INSERT Games(GameName, ESRB_ID,Multiplayer,IsOnline) VALUES ('Missile Command',1,0,0)
INSERT Games(GameName, ESRB_ID,Multiplayer,IsOnline) VALUES ('Crash Bandicoot',5,0,0)
INSERT Games(GameName, ESRB_ID,Multiplayer,IsOnline) VALUES ('Star Wars Battlefront',3,1,0)
INSERT Games(GameName, ESRB_ID,Multiplayer,IsOnline) VALUES ('Halo: Combat Evolved',4,1,1)
INSERT Games(GameName, ESRB_ID,Multiplayer,IsOnline) VALUES ('Halo 2',4,1,1)
INSERT Games(GameName, ESRB_ID,Multiplayer,IsOnline) VALUES ('Halo 3',4,1,1)
INSERT Games(GameName, ESRB_ID,Multiplayer,IsOnline) VALUES ('Halo 3: ODST',4,1,1)
INSERT Games(GameName, ESRB_ID,Multiplayer,IsOnline) VALUES ('Halo Reach',4,1,1)
INSERT Games(GameName, ESRB_ID,Multiplayer,IsOnline) VALUES ('Halo 4',4,1,1)
INSERT Games(GameName, ESRB_ID,Multiplayer,IsOnline) VALUES ('Halo 5: Guardians',3,1,1)
INSERT Games(GameName, ESRB_ID,Multiplayer,IsOnline) VALUES ('Halo Wars',3,1,1)
INSERT Games(GameName, ESRB_ID,Multiplayer,IsOnline) VALUES ('Halo Wars 2',3,1,1)
INSERT Games(GameName, ESRB_ID,Multiplayer,IsOnline) VALUES ('Guitar Hero: On Tour',2,1,0)
INSERT Games(GameName, ESRB_ID,Multiplayer,IsOnline) VALUES ('Monster Hunter World',3,1,1)
INSERT Games(GameName, ESRB_ID,Multiplayer,IsOnline) VALUES ('Mario Kart 64',1,1,0)
INSERT Games(GameName, ESRB_ID,Multiplayer,IsOnline) VALUES ('Mario Kart Wii',1,1,1)
INSERT Games(GameName, ESRB_ID,Multiplayer,IsOnline) VALUES ('Left 4 Dead',4,1,1)
INSERT Games(GameName, ESRB_ID,Multiplayer,IsOnline) VALUES ('Elder Scrolls: Arena',4,0,0)
INSERT Games(GameName, ESRB_ID,Multiplayer,IsOnline) VALUES ('Elder Scrolls II: Daggerfall',4,0,0)
INSERT Games(GameName, ESRB_ID,Multiplayer,IsOnline) VALUES ('Elder Scrolls III: Marrowind',4,0,0)
INSERT Games(GameName, ESRB_ID,Multiplayer,IsOnline) VALUES ('Elder Scrolls IV: Oblivion',4,0,0)
INSERT Games(GameName, ESRB_ID,Multiplayer,IsOnline) VALUES ('Elder Scrolls V: Skyrim',4,0,0)
INSERT Games(GameName, ESRB_ID,Multiplayer,IsOnline) VALUES ('Elder Scrolls Online',4,1,1)
INSERT Games(GameName, ESRB_ID,Multiplayer,IsOnline) VALUES ('Destiny',3,1,1)
INSERT Games(GameName, ESRB_ID,Multiplayer,IsOnline) VALUES ('Destiny 2',3,1,1)
INSERT Games(GameName, ESRB_ID,Multiplayer,IsOnline) VALUES ('Super Smash Bros. Brawl',3,1,1)
INSERT Games(GameName, ESRB_ID,Multiplayer,IsOnline) VALUES ('Sonic The Hedgehog',1,1,0)
INSERT Games(GameName, ESRB_ID,Multiplayer,IsOnline) VALUES ('Legend of Zelda',1,0,0)
INSERT Games(GameName, ESRB_ID,Multiplayer,IsOnline) VALUES ('Legend of Zelda: Ocarina of Time',1,0,0)
INSERT Games(GameName, ESRB_ID,Multiplayer,IsOnline) VALUES ('Legend of Zelda: Majoras Mask',1,0,0)
INSERT Games(GameName, ESRB_ID,Multiplayer,IsOnline) VALUES ('Legend of Zelda Links Awakening',1,0,0)
INSERT Games(GameName, ESRB_ID,Multiplayer,IsOnline) VALUES ('Donkey Kong 64',1,1,0)
INSERT Games(GameName, ESRB_ID,Multiplayer,IsOnline) VALUES ('Mario 64',1,0,0)
INSERT Games(GameName, ESRB_ID,Multiplayer,IsOnline) VALUES ('Last of Us',4,1,1)
INSERT Games(GameName, ESRB_ID,Multiplayer,IsOnline) VALUES ('Crazy Taxi',3,0,0)
INSERT Games(GameName, ESRB_ID,Multiplayer,IsOnline) VALUES ('Civilizations',2,1,1)


select * from dbo.Console;
select * from dbo.ESRB;
select * from dbo.Games;
select * from dbo.Genre;
--select * from dbo.GamesGenre;
select * from dbo.Manufacturer;
--for testing and dropping tables
/*
DROP TABLE DBO.Console;
DROP TABLE DBO.Manufacturer;
DROP TABLE DBO.Genre;
DROP TABLE DBO.Games;
DROP TABLE DBO.ESRB;
DROP TABLE DBO.GamesGenre;

select 
	ci.consoleid, 
	ci.consolename, 
    mi.manufacturername 
from dbo.console ci
left join dbo.manufacturer mi on mi.MANUFACTURERID = CI.MANUFACTURERID



select * from dbo.manufacturer
*/