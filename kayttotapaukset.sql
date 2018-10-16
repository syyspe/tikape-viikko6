-- Rekisteröi uusi asiakas
INSERT INTO Asiakas (nimi, sposti) VALUES ('Daniel Asiakas', 'dan@asiakas.fi');

-- Hae asiakasta sukunimen perusteella
SELECT * FROM Asiakas WHERE nimi LIKE '%Asiakas';

-- Hae asiakasta etunnimen perusteella
SELECT * FROM Asiakas WHERE nimi LIKE 'Cecilia%';

-- Hae kaikki elokuvat
SELECT nimi AS Elokuva from Elokuva;

-- Hae kaikki elokuvan x näytökset
SELECT elokuva.nimi AS elokuva, Naytos.aika, Teatteri.nimi AS teatteri, Sali.nimi AS sali 
FROM Elokuva 
	INNER JOIN Naytos ON Naytos.elokuva_id=Elokuva.id 
	INNER JOIN Sali ON Sali.id = Naytos.sali_id 
	INNER JOIN Teatteri ON Teatteri.id = Sali.teatteri_id 
WHERE Elokuva.nimi='Reservoir Dogs';

-- Hae kaikki paikat näytöksessä x
SELECT Paikka.rivinro AS rivi, Paikka.paikkanro AS tuoli, NaytosPaikka.varattu AS Varattu
FROM Paikka
	INNER JOIN NaytosPaikka ON NaytosPaikka.paikka_id=Paikka.id
	INNER JOIN Naytos ON Naytos.id = NaytosPaikka.paikka_id
WHERE NaytosPaikka.naytos_id=2;

-- Hae kaikki vapaat paikat näytöksessä x
SELECT 
		Paikka.rivinro AS rivi, Paikka.paikkanro AS tuoli, 
		NaytosPaikka.naytos_id AS näytösID, 
		NaytosPaikka.paikka_id AS paikkaID
FROM Paikka
	INNER JOIN NaytosPaikka ON NaytosPaikka.paikka_id=Paikka.id
	INNER JOIN Naytos ON Naytos.id = NaytosPaikka.naytos_id
WHERE NaytosPaikka.varattu=0
AND NaytosPaikka.naytos_id=1;
	
-- Kun asiakas on valinnut näytöksen ja paikan, voidaan tehdä varaus
BEGIN TRANSACTION;
	-- Ensin uusi varaus...
	INSERT INTO Varaus (maksettu, peruttu, asiakas_id, naytos_id) VALUES (0,0,4,1);
	-- Paikka...
	UPDATE NaytosPaikka SET varattu=1
	WHERE NaytosPaikka.naytos_id=1
	AND NaytosPaikka.paikka_id=2;
	-- Lippu...
	INSERT INTO Lippu (tarkistusnumero, kaytetty, varaus_id, naytospaikka_id) 
	VALUES ('jKkjkioie989993895', 0, (SELECT MAX(id) FROM Varaus), (SELECT id FROM NaytosPaikka WHERE naytos_id=1 AND paikka_id=2));
COMMIT;

-- Merkitään asiakkaan varaukset maksetuiksi (check out)
UPDATE Varaus SET maksettu=1 WHERE asiakas_id=1;

-- Haetaan asiakkaan kaikki maksetut varaukset
SELECT * FROM Varaus WHERE maksettu=1 AND asiakas_id=3;

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
WHERE Lippu.tarkistusnumero='jKkjkioie989993895';

-- Merkitään lippu käytetyksi
UPDATE Lippu SET kaytetty=1 WHERE tarkistusnumero='jKkjkioie989993895';