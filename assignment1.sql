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
	ESRB varchar (5) NOT NULL
)
alter table esrb
alter column esrb varchar(5)

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
	FOREIGN KEY (GameID) REFERENCES Games (GameID)
)

CREATE TABLE GameCatalogue(
	CatalogueID int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	GameID int,
	ConsoleID int,
	PurchaseDate date NOT NULL,
	Collectable bit DEFAULT 0,
	FOREIGN KEY (GameID) REFERENCES Games(GameID),
	FOREIGN KEY (ConsoleID) REFERENCES Console(ConsoleID)
)

SET IDENTITY_INSERT dbo.Manufacturer ON;
INSERT Manufacturer (ManufacturerID, ManufacturerName) VALUES ('1','Sony')
INSERT Manufacturer (ManufacturerID, ManufacturerName) VALUES ('2','Nintendo')
INSERT Manufacturer (ManufacturerID, ManufacturerName) VALUES ('3','Microsoft')
INSERT Manufacturer (ManufacturerID, ManufacturerName) VALUES ('4','Sega')
INSERT Manufacturer (ManufacturerID, ManufacturerName) VALUES ('5','Atari')
INSERT Manufacturer (ManufacturerID, ManufacturerName) VALUES ('6','Bandai')
SET IDENTITY_INSERT dbo.Manufacturer OFF;

SET IDENTITY_INSERT dbo.Console ON;
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
INSERT Console (ConsoleID,ManufacturerID, ConsoleName) VALUES ('523','6','Wonder Swan')
SET IDENTITY_INSERT dbo.Console OFF;


SET IDENTITY_INSERT dbo.ESRB ON;
INSERT ESRB(ESRB_ID, ESRB) VALUES ('1','E')
INSERT ESRB(ESRB_ID, ESRB) VALUES ('2','E 10+')
INSERT ESRB(ESRB_ID, ESRB) VALUES ('3','T')
INSERT ESRB(ESRB_ID, ESRB) VALUES ('4','M')
INSERT ESRB(ESRB_ID, ESRB) VALUES ('5','KA')
SET IDENTITY_INSERT dbo.ESRB OFF;


SET IDENTITY_INSERT dbo.Genre ON;
INSERT Genre (GenreID, GenreName) VALUES ('1','Role Playing Game')
INSERT Genre (GenreID, GenreName) VALUES ('2','Real Time Strategy')
INSERT Genre (GenreID, GenreName) VALUES ('3','Turn Based Strategy')
INSERT Genre (GenreID, GenreName) VALUES ('4','First Person Shooter')
INSERT Genre (GenreID, GenreName) VALUES ('5','Exploration')
INSERT Genre (GenreID, GenreName) VALUES ('6','Sandbox')
INSERT Genre (GenreID, GenreName) VALUES ('7','Platformer')
INSERT Genre (GenreID, GenreName) VALUES ('8','Music')
INSERT Genre (GenreID, GenreName) VALUES ('9','Third Person Shooter')
INSERT Genre (GenreID, GenreName) VALUES ('10','Puzzle')
INSERT Genre (GenreID, GenreName) VALUES ('11','Sports')
INSERT Genre (GenreID, GenreName) VALUES ('12','Racing')
INSERT Genre (GenreID, GenreName) VALUES ('13','Fighting')
SET IDENTITY_INSERT dbo.Genre OFF;

SET IDENTITY_INSERT dbo.Games ON;
INSERT Games (GameID, GameName, ESRB_ID, Multiplayer,IsOnline) VALUES ('1','Final Fantasy I','2','0','0')
INSERT Games (GameID, GameName, ESRB_ID, Multiplayer,IsOnline) VALUES ('2','Final Fantasy II','3','0','0')
INSERT Games (GameID, GameName, ESRB_ID, Multiplayer,IsOnline) VALUES ('3','Final Fantasy III','1','0','0')
INSERT Games (GameID, GameName, ESRB_ID, Multiplayer,IsOnline) VALUES ('4','Final Fantasy IV','2','0','0')
INSERT Games (GameID, GameName, ESRB_ID, Multiplayer,IsOnline) VALUES ('5','Final Fantasy V','3','0','0')
INSERT Games (GameID, GameName, ESRB_ID, Multiplayer,IsOnline) VALUES ('6','Final Fantasy VI','2','0','0')
INSERT Games (GameID, GameName, ESRB_ID, Multiplayer,IsOnline) VALUES ('7','Final Fantasy VII','3','0','0')
INSERT Games (GameID, GameName, ESRB_ID, Multiplayer,IsOnline) VALUES ('8','Final Fantasy VIII','3','0','0')
INSERT Games (GameID, GameName, ESRB_ID, Multiplayer,IsOnline) VALUES ('9','Final FantasyIX','3','0','0')
INSERT Games (GameID, GameName, ESRB_ID, Multiplayer,IsOnline) VALUES ('10','Final Fantasy X','3','0','0')
INSERT Games (GameID, GameName, ESRB_ID, Multiplayer,IsOnline) VALUES ('11','Final Fantasy XI','3','0','0')
INSERT Games (GameID, GameName, ESRB_ID, Multiplayer,IsOnline) VALUES ('12','Final Fantasy XII','3','0','0')
INSERT Games (GameID, GameName, ESRB_ID, Multiplayer,IsOnline) VALUES ('13','Final Fantasy XIV','3','0','1')
INSERT Games (GameID, GameName, ESRB_ID, Multiplayer,IsOnline) VALUES ('14','Final Fantasy XV','3','0','0')
INSERT Games (GameID, GameName, ESRB_ID, Multiplayer,IsOnline) VALUES ('15','Missile Command','1','0','0')
INSERT Games (GameID, GameName, ESRB_ID, Multiplayer,IsOnline) VALUES ('16','Crash Bandicoot','5','0','0')
INSERT Games (GameID, GameName, ESRB_ID, Multiplayer,IsOnline) VALUES ('17','Star Wars Battlefront','3','1','0')
INSERT Games (GameID, GameName, ESRB_ID, Multiplayer,IsOnline) VALUES ('18','Halo: Combat Evolved','4','1','1')
INSERT Games (GameID, GameName, ESRB_ID, Multiplayer,IsOnline) VALUES ('19','Halo 2','4','1','1')
INSERT Games (GameID, GameName, ESRB_ID, Multiplayer,IsOnline) VALUES ('20','Halo 3','4','1','1')
INSERT Games (GameID, GameName, ESRB_ID, Multiplayer,IsOnline) VALUES ('21','Halo 3: ODST','4','1','1')
INSERT Games (GameID, GameName, ESRB_ID, Multiplayer,IsOnline) VALUES ('22','Halo Reach','4','1','1')
INSERT Games (GameID, GameName, ESRB_ID, Multiplayer,IsOnline) VALUES ('23','Halo 4','4','1','1')
INSERT Games (GameID, GameName, ESRB_ID, Multiplayer,IsOnline) VALUES ('24','Halo 5: Guardians','3','1','1')
INSERT Games (GameID, GameName, ESRB_ID, Multiplayer,IsOnline) VALUES ('25','Halo Wars','3','1','1')
INSERT Games (GameID, GameName, ESRB_ID, Multiplayer,IsOnline) VALUES ('26','Halo Wars 2','3','1','1')
INSERT Games (GameID, GameName, ESRB_ID, Multiplayer,IsOnline) VALUES ('27','Guitar Hero: On Tour','2','1','0')
INSERT Games (GameID, GameName, ESRB_ID, Multiplayer,IsOnline) VALUES ('28','Monster Hunter World','3','1','1')
INSERT Games (GameID, GameName, ESRB_ID, Multiplayer,IsOnline) VALUES ('29','Mario Kart 64','1','1','0')
INSERT Games (GameID, GameName, ESRB_ID, Multiplayer,IsOnline) VALUES ('30','Mario Kart Wii','1','1','1')
INSERT Games (GameID, GameName, ESRB_ID, Multiplayer,IsOnline) VALUES ('31','Left 4 Dead','4','1','1')
INSERT Games (GameID, GameName, ESRB_ID, Multiplayer,IsOnline) VALUES ('32','Elder Scrolls: Arena','4','0','0')
INSERT Games (GameID, GameName, ESRB_ID, Multiplayer,IsOnline) VALUES ('33','Elder Scrolls II: Daggerfall','4','0','0')
INSERT Games (GameID, GameName, ESRB_ID, Multiplayer,IsOnline) VALUES ('34','Elder Scrolls III: Marrowind','4','0','0')
INSERT Games (GameID, GameName, ESRB_ID, Multiplayer,IsOnline) VALUES ('35','Elder Scrolls IV: Oblivion','4','0','0')
INSERT Games (GameID, GameName, ESRB_ID, Multiplayer,IsOnline) VALUES ('36','Elder Scrolls V: Skyrim','4','0','0')
INSERT Games (GameID, GameName, ESRB_ID, Multiplayer,IsOnline) VALUES ('37','Elder Scrolls Online','4','1','1')
INSERT Games (GameID, GameName, ESRB_ID, Multiplayer,IsOnline) VALUES ('38','Destiny','3','1','1')
INSERT Games (GameID, GameName, ESRB_ID, Multiplayer,IsOnline) VALUES ('39','Destiny 2','3','1','1')
INSERT Games (GameID, GameName, ESRB_ID, Multiplayer,IsOnline) VALUES ('40','Super Smash Bros. Brawl','3','1','1')
INSERT Games (GameID, GameName, ESRB_ID, Multiplayer,IsOnline) VALUES ('41','Sonic The Hedgehog','1','1','0')
INSERT Games (GameID, GameName, ESRB_ID, Multiplayer,IsOnline) VALUES ('42','Legend of Zelda','1','0','0')
INSERT Games (GameID, GameName, ESRB_ID, Multiplayer,IsOnline) VALUES ('43','Legend of Zelda: Ocarina of Time','1','0','0')
INSERT Games (GameID, GameName, ESRB_ID, Multiplayer,IsOnline) VALUES ('44','Legend of Zelda: Majoras Mask','1','0','0')
INSERT Games (GameID, GameName, ESRB_ID, Multiplayer,IsOnline) VALUES ('45','Legend of Zelda Links Awakening','1','0','0')
INSERT Games (GameID, GameName, ESRB_ID, Multiplayer,IsOnline) VALUES ('46','Donkey Kong 64','1','1','0')
INSERT Games (GameID, GameName, ESRB_ID, Multiplayer,IsOnline) VALUES ('47','Mario 64','1','0','0')
INSERT Games (GameID, GameName, ESRB_ID, Multiplayer,IsOnline) VALUES ('48','Last of Us','4','1','1')
INSERT Games (GameID, GameName, ESRB_ID, Multiplayer,IsOnline) VALUES ('49','Crazy Taxi','3','0','0')
INSERT Games (GameID, GameName, ESRB_ID, Multiplayer,IsOnline) VALUES ('50','Civilizations','2','1','1')
SET IDENTITY_INSERT dbo.Games OFF;


INSERT GamesGenre (GenreID, GameID) VALUES ('1','1')
INSERT GamesGenre (GenreID, GameID) VALUES ('1','2')
INSERT GamesGenre (GenreID, GameID) VALUES ('1','3')
INSERT GamesGenre (GenreID, GameID) VALUES ('1','4')
INSERT GamesGenre (GenreID, GameID) VALUES ('1','5')
INSERT GamesGenre (GenreID, GameID) VALUES ('1','6')
INSERT GamesGenre (GenreID, GameID) VALUES ('1','7')
INSERT GamesGenre (GenreID, GameID) VALUES ('1','8')
INSERT GamesGenre (GenreID, GameID) VALUES ('1','9')
INSERT GamesGenre (GenreID, GameID) VALUES ('1','10')
INSERT GamesGenre (GenreID, GameID) VALUES ('1','11')
INSERT GamesGenre (GenreID, GameID) VALUES ('1','12')
INSERT GamesGenre (GenreID, GameID) VALUES ('1','13')
INSERT GamesGenre (GenreID, GameID) VALUES ('1','14')
INSERT GamesGenre (GenreID, GameID) VALUES ('9','15')
INSERT GamesGenre (GenreID, GameID) VALUES ('7','16')
INSERT GamesGenre (GenreID, GameID) VALUES ('4','17')
INSERT GamesGenre (GenreID, GameID) VALUES ('9','17')
INSERT GamesGenre (GenreID, GameID) VALUES ('4','18')
INSERT GamesGenre (GenreID, GameID) VALUES ('4','19')
INSERT GamesGenre (GenreID, GameID) VALUES ('4','20')
INSERT GamesGenre (GenreID, GameID) VALUES ('4','21')
INSERT GamesGenre (GenreID, GameID) VALUES ('4','22')
INSERT GamesGenre (GenreID, GameID) VALUES ('4','23')
INSERT GamesGenre (GenreID, GameID) VALUES ('4','24')
INSERT GamesGenre (GenreID, GameID) VALUES ('4','25')
INSERT GamesGenre (GenreID, GameID) VALUES ('4','26')
INSERT GamesGenre (GenreID, GameID) VALUES ('8','27')
INSERT GamesGenre (GenreID, GameID) VALUES ('1','28')
INSERT GamesGenre (GenreID, GameID) VALUES ('12','29')
INSERT GamesGenre (GenreID, GameID) VALUES ('12','30')
INSERT GamesGenre (GenreID, GameID) VALUES ('4','31')
INSERT GamesGenre (GenreID, GameID) VALUES ('1','32')
INSERT GamesGenre (GenreID, GameID) VALUES ('1','33')
INSERT GamesGenre (GenreID, GameID) VALUES ('1','34')
INSERT GamesGenre (GenreID, GameID) VALUES ('1','35')
INSERT GamesGenre (GenreID, GameID) VALUES ('1','36')
INSERT GamesGenre (GenreID, GameID) VALUES ('1','37')
INSERT GamesGenre (GenreID, GameID) VALUES ('4','38')
INSERT GamesGenre (GenreID, GameID) VALUES ('4','39')
INSERT GamesGenre (GenreID, GameID) VALUES ('7','40')
INSERT GamesGenre (GenreID, GameID) VALUES ('7','41')
INSERT GamesGenre (GenreID, GameID) VALUES ('1','42')
INSERT GamesGenre (GenreID, GameID) VALUES ('1','43')
INSERT GamesGenre (GenreID, GameID) VALUES ('1','44')
INSERT GamesGenre (GenreID, GameID) VALUES ('1','45')
INSERT GamesGenre (GenreID, GameID) VALUES ('7','46')
INSERT GamesGenre (GenreID, GameID) VALUES ('7','47')
INSERT GamesGenre (GenreID, GameID) VALUES ('1','48')
INSERT GamesGenre (GenreID, GameID) VALUES ('12','49')
INSERT GamesGenre (GenreID, GameID) VALUES ('3','50')

INSERT GameCatalogue (CatalogueID,GameID,ConsoleID, PurchaseDate,Collectable) VALUES ('1','1','518','41765','1')
INSERT GameCatalogue (CatalogueID,GameID,ConsoleID, PurchaseDate,Collectable) VALUES ('2','2','523','37882','')
INSERT GameCatalogue (CatalogueID,GameID,ConsoleID, PurchaseDate,Collectable) VALUES ('3','3','521','42131','')
INSERT GameCatalogue (CatalogueID,GameID,ConsoleID, PurchaseDate,Collectable) VALUES ('4','4','523','41798','')
INSERT GameCatalogue (CatalogueID,GameID,ConsoleID, PurchaseDate,Collectable) VALUES ('5','5','501','43346','')
INSERT GameCatalogue (CatalogueID,GameID,ConsoleID, PurchaseDate,Collectable) VALUES ('6','6','518','42006','')
INSERT GameCatalogue (CatalogueID,GameID,ConsoleID, PurchaseDate,Collectable) VALUES ('7','7','501','42159','')
INSERT GameCatalogue (CatalogueID,GameID,ConsoleID, PurchaseDate,Collectable) VALUES ('8','8','501','41797','')
INSERT GameCatalogue (CatalogueID,GameID,ConsoleID, PurchaseDate,Collectable) VALUES ('9','9','502','43358','')
INSERT GameCatalogue (CatalogueID,GameID,ConsoleID, PurchaseDate,Collectable) VALUES ('10','10','503','43176','')
INSERT GameCatalogue (CatalogueID,GameID,ConsoleID, PurchaseDate,Collectable) VALUES ('11','11','507','43176','')
INSERT GameCatalogue (CatalogueID,GameID,ConsoleID, PurchaseDate,Collectable) VALUES ('12','12','504','42744','')
INSERT GameCatalogue (CatalogueID,GameID,ConsoleID, PurchaseDate,Collectable) VALUES ('13','13','NULL','43110','')
INSERT GameCatalogue (CatalogueID,GameID,ConsoleID, PurchaseDate,Collectable) VALUES ('14','14','505','76079','')
INSERT GameCatalogue (CatalogueID,GameID,ConsoleID, PurchaseDate,Collectable) VALUES ('15','15','511','36164','')
INSERT GameCatalogue (CatalogueID,GameID,ConsoleID, PurchaseDate,Collectable) VALUES ('16','16','512','37747','')
INSERT GameCatalogue (CatalogueID,GameID,ConsoleID, PurchaseDate,Collectable) VALUES ('17','17','NULL','37462','')
INSERT GameCatalogue (CatalogueID,GameID,ConsoleID, PurchaseDate,Collectable) VALUES ('18','18','NULL','41441','')
INSERT GameCatalogue (CatalogueID,GameID,ConsoleID, PurchaseDate,Collectable) VALUES ('19','19','NULL','40435','')
INSERT GameCatalogue (CatalogueID,GameID,ConsoleID, PurchaseDate,Collectable) VALUES ('20','20','507','41979','')
INSERT GameCatalogue (CatalogueID,GameID,ConsoleID, PurchaseDate,Collectable) VALUES ('21','21','507','41704','')
INSERT GameCatalogue (CatalogueID,GameID,ConsoleID, PurchaseDate,Collectable) VALUES ('22','22','507','41586','')
INSERT GameCatalogue (CatalogueID,GameID,ConsoleID, PurchaseDate,Collectable) VALUES ('23','23','507','42364','')
INSERT GameCatalogue (CatalogueID,GameID,ConsoleID, PurchaseDate,Collectable) VALUES ('24','24','508','42420','')
INSERT GameCatalogue (CatalogueID,GameID,ConsoleID, PurchaseDate,Collectable) VALUES ('25','25','508','41808','')
INSERT GameCatalogue (CatalogueID,GameID,ConsoleID, PurchaseDate,Collectable) VALUES ('26','26','508','43353','')
INSERT GameCatalogue (CatalogueID,GameID,ConsoleID, PurchaseDate,Collectable) VALUES ('27','27','519','39151','')
INSERT GameCatalogue (CatalogueID,GameID,ConsoleID, PurchaseDate,Collectable) VALUES ('28','28','508','43110','')
INSERT GameCatalogue (CatalogueID,GameID,ConsoleID, PurchaseDate,Collectable) VALUES ('29','29','522','36287','')
INSERT GameCatalogue (CatalogueID,GameID,ConsoleID, PurchaseDate,Collectable) VALUES ('30','30','513','41303','')
INSERT GameCatalogue (CatalogueID,GameID,ConsoleID, PurchaseDate,Collectable) VALUES ('31','31','507','42005','')
INSERT GameCatalogue (CatalogueID,GameID,ConsoleID, PurchaseDate,Collectable) VALUES ('32','32','NULL','43321','')
INSERT GameCatalogue (CatalogueID,GameID,ConsoleID, PurchaseDate,Collectable) VALUES ('33','33','NULL','42159','')
INSERT GameCatalogue (CatalogueID,GameID,ConsoleID, PurchaseDate,Collectable) VALUES ('34','34','506','42257','')
INSERT GameCatalogue (CatalogueID,GameID,ConsoleID, PurchaseDate,Collectable) VALUES ('35','35','507','42354','')
INSERT GameCatalogue (CatalogueID,GameID,ConsoleID, PurchaseDate,Collectable) VALUES ('36','36','508','42376','')
INSERT GameCatalogue (CatalogueID,GameID,ConsoleID, PurchaseDate,Collectable) VALUES ('37','37','508','43132','')
INSERT GameCatalogue (CatalogueID,GameID,ConsoleID, PurchaseDate,Collectable) VALUES ('38','38','505','43162','')
INSERT GameCatalogue (CatalogueID,GameID,ConsoleID, PurchaseDate,Collectable) VALUES ('39','39','505','43194','')
INSERT GameCatalogue (CatalogueID,GameID,ConsoleID, PurchaseDate,Collectable) VALUES ('40','40','513','43108','')
INSERT GameCatalogue (CatalogueID,GameID,ConsoleID, PurchaseDate,Collectable) VALUES ('41','41','500','36594','')
INSERT GameCatalogue (CatalogueID,GameID,ConsoleID, PurchaseDate,Collectable) VALUES ('42','42','521','36315','')
INSERT GameCatalogue (CatalogueID,GameID,ConsoleID, PurchaseDate,Collectable) VALUES ('43','43','522','36130','')
INSERT GameCatalogue (CatalogueID,GameID,ConsoleID, PurchaseDate,Collectable) VALUES ('44','44','522','36168','')
INSERT GameCatalogue (CatalogueID,GameID,ConsoleID, PurchaseDate,Collectable) VALUES ('45','45','516','35590','')
INSERT GameCatalogue (CatalogueID,GameID,ConsoleID, PurchaseDate,Collectable) VALUES ('46','46','522','36680','')
INSERT GameCatalogue (CatalogueID,GameID,ConsoleID, PurchaseDate,Collectable) VALUES ('47','47','522','41372','')
INSERT GameCatalogue (CatalogueID,GameID,ConsoleID, PurchaseDate,Collectable) VALUES ('48','48','504','43321','')
INSERT GameCatalogue (CatalogueID,GameID,ConsoleID, PurchaseDate,Collectable) VALUES ('49','49','506','42433','')
INSERT GameCatalogue (CatalogueID,GameID,ConsoleID, PurchaseDate,Collectable) VALUES ('50','50','509','41648','')




/* Question 1 Bring back all of the consoles */