/*Question 1*/
SELECT
	DISTINCT CN.ConsoleName [Console],
	MF.ManufacturerName [Manufacturer]
FROM
	dbo.GameCatalogue GC
	INNER JOIN dbo.Games GS ON GC.GameID = GS.GameID
	INNER JOIN dbo.ESRB EE ON GS.ESRB_ID = EE.ESRB_ID
	INNER JOIN dbo.GamesGenre GG ON GS.GameID = GG.GameID
	INNER JOIN dbo.Genre GR ON GG.GenreID = GR.GenreID
	INNER JOIN dbo.Console CN ON GC.ConsoleID = CN.ConsoleID
	INNER JOIN dbo.Manufacturer MF on CN.ManufacturerID = MF.ManufacturerID

	/*Question2*/
SELECT
	GS.GameName [Game],
	CN.ConsoleName [Console],
	MF.ManufacturerName [Manufacturer]
FROM
	dbo.GameCatalogue GC
	LEFT JOIN dbo.Games GS ON GC.GameID = GS.GameID
	LEFT JOIN dbo.ESRB EE ON GS.ESRB_ID = EE.ESRB_ID
	LEFT JOIN dbo.GamesGenre GG ON GS.GameID = GG.GameID
	LEFT JOIN dbo.Genre GR ON GG.GenreID = GR.GenreID
	LEFT JOIN dbo.Console CN ON GC.ConsoleID = CN.ConsoleID
	LEFT JOIN dbo.Manufacturer MF on CN.ManufacturerID = MF.ManufacturerID

/*Question 3*/
SELECT
	GS.GameName [Game],
	CN.ConsoleName [Console]
FROM
	dbo.GameCatalogue GC
	INNER JOIN dbo.Games GS ON GC.GameID = GS.GameID
	INNER JOIN dbo.ESRB EE ON GS.ESRB_ID = EE.ESRB_ID
	INNER JOIN dbo.GamesGenre GG ON GS.GameID = GG.GameID
	INNER JOIN dbo.Genre GR ON GG.GenreID = GR.GenreID
	INNER JOIN dbo.Console CN ON GC.ConsoleID = CN.ConsoleID
	INNER JOIN dbo.Manufacturer MF on CN.ManufacturerID = MF.ManufacturerID
WHERE
	CN.ConsoleID = '508'


/*Question 4*/
SELECT
GMS.GameName [GameName],
CNN.ConsoleName

FROM
(
	SELECT COUNT(GC.GameID)GameCount,
	GC.GameID

	FROM
		dbo.GameCatalogue GC
		INNER JOIN dbo.Games GS ON GC.GameID = GS.GameID
		INNER JOIN dbo.ESRB EE ON GS.ESRB_ID = EE.ESRB_ID
		INNER JOIN dbo.Console CN ON GC.ConsoleID = CN.ConsoleID
		INNER JOIN dbo.Manufacturer MF on CN.ManufacturerID = MF.ManufacturerID
	GROUP BY
		GC.GameID

	)ECON
	
	INNER JOIN dbo.GameCatalogue GGSS ON GGSS.GameID = ECON.GameID
	INNER JOIN dbo.Games GMS ON GGSS.GameID = GMS.GameID
	INNER JOIN dbo.Console CNN ON GGSS.ConsoleID = CNN.ConsoleID
WHERE
	ECON.GameCount > 1
	
	

	

/*Question 5*/
SELECT
	GS.GameName [Game],
	CN.ConsoleName [Console],
	GR.GenreName [GENRE]
FROM
	dbo.GameCatalogue GC
	INNER JOIN dbo.Games GS ON GC.GameID = GS.GameID
	INNER JOIN dbo.ESRB EE ON GS.ESRB_ID = EE.ESRB_ID
	INNER JOIN dbo.GamesGenre GG ON GS.GameID = GG.GameID
	INNER JOIN dbo.Genre GR ON GG.GenreID = GR.GenreID
	INNER JOIN dbo.Console CN ON GC.ConsoleID = CN.ConsoleID
	INNER JOIN dbo.Manufacturer MF on CN.ManufacturerID = MF.ManufacturerID
WHERE
	GG.GenreID = '1'