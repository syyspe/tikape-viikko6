-- Rekisteröi uusi asiakas
INSERT INTO Asiakas (nimi, sposti) VALUES ('Aapeli Asiakas', 'aapeli@asiakas.fi');

-- Hae asiakasta sukunimen perusteella
SELECT * FROM Asiakas WHERE nimi LIKE '%Asiakas';

-- Hae asiakasta etunnimen perusteella
SELECT * FROM Asiakas WHERE nimi LIKE 'Cecilia%';

-- Hae kaikki elokuvat
SELECT nimi AS Elokuva from Elokuva;

-- Hae kaikki elokuvan x näytökset
SELECT elokuva.nimi AS elokuva, naytos.aika, teatteri.nimi AS teatteri, sali.nimi AS sali 
FROM elokuva 
	INNER JOIN naytos ON naytos.elokuva_id=elokuva.id 
	INNER JOIN sali ON sali.id = naytos.sali_id 
	INNER JOIN teatteri ON teatteri.id = sali.teatteri_id 
WHERE elokuva.nimi='Reservoir Dogs';

-- Hae kaikki paikat näytöksessä x
SELECT Paikka.rivinro AS rivi, Paikka.paikkanro AS tuoli, NaytosPaikka.varattu AS Varattu
FROM Paikka
	INNER JOIN NaytosPaikka ON NaytosPaikka.paikka_id=Paikka.id
	INNER JOIN Naytos ON Naytos.id = NaytosPaikka.paikka_id
WHERE NaytosPaikka.naytos_id=2;

-- Hae kaikki vapaat paikat näytöksessä x
SELECT 
		Paikka.rivinro AS rivi, Paikka.paikkanro AS tuoli, 
		NaytosPaikka.varattu AS Varattu, NaytosPaikka.naytos_id AS näytösID, 
		NaytosPaikka.paikka_id AS paikkaID
FROM Paikka
	INNER JOIN NaytosPaikka ON NaytosPaikka.paikka_id=Paikka.id
	INNER JOIN Naytos ON Naytos.id = NaytosPaikka.paikka_id
WHERE NaytosPaikka.varattu=0
AND NaytosPaikka.naytos_id=1;
	
-- Kun asiakas on valinnut näytöksen ja paikan, voidaan tehdä varaus
BEGIN TRANSACTION;
	-- Ensin uusi varaus...
	INSERT INTO Varaus (maksettu, peruttu, asiakas_id, naytos_id) VALUES (0,0,3,4);
	-- Paikka...
	UPDATE NaytosPaikka SET varattu=1
	WHERE NaytosPaikka.naytos_id=4
	AND NaytosPaikka.paikka_id=5;
	-- Lippu...
	INSERT INTO Lippu (tarkistusnumero, kaytetty, varaus_id, naytospaikka_id) 
	VALUES ('jKkjkioie98999389', 0, (SELECT MAX(id) FROM Varaus), (SELECT id FROM NaytosPaikka WHERE naytos_id=4 AND paikka_id=5));
COMMIT;

-- Haetaan asiakkaan kaikki varaukset
SELECT Ä FROM Varaus WHERE asiakas_id=3;

-- Haetaan varauksen lippu lähetettäväksi asiakkaalle spostilla
SELECT Asiakas.nimi, Asiakas.sposti, Lippu.tarkistusnumero 
FROM Asiakas
	INNER JOIN Varaus ON Varaus.asiakas_id=Asiakas.id
	INNER JOIN Lippu ON Lippu.varaus_id=Varaus.id
WHERE Varaus.id=1;

-- Luetaan lippu koneellisesti
SELECT Lippu.tarkistusnumero, Varaus.maksettu, Varaus.peruttu, Lippu.kaytetty 
FROM Varaus
	INNER JOIN Lippu ON Lippu.varaus_id=Varaus.id
WHERE Lippu.tarkistusnumero='jKkjkioie98999389';