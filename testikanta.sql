CREATE TABLE Asiakas (
	id INTEGER PRIMARY KEY, 
	nimi VARCHAR(256),
	sposti VARCHAR(256)
);
INSERT INTO Asiakas (nimi, sposti) VALUES ('Asko Asiakas', 'aa@aa.fi');
INSERT INTO Asiakas (nimi, sposti) VALUES ('Berit Asiakas', 'ba@aa.fi');
INSERT INTO Asiakas (nimi, sposti) VALUES ('Cecilia Asiakas', 'ca@aa.fi');

CREATE TABLE Elokuva (
	id INTEGER PRIMARY KEY,
	nimi VARCHAR(256)
);
INSERT INTO Elokuva (nimi) VALUES ('Reservoir Dogs');
INSERT INTO Elokuva (nimi) VALUES ('Pulp Fiction');
INSERT INTO Elokuva (nimi) VALUES ('Killing Bill vol. 1');

CREATE TABLE Teatteri (
	id INTEGER PRIMARY KEY,
	nimi VARCHAR(256),
	osoite VARCHAR(256)
);

INSERT INTO Teatteri (nimi, osoite) VALUES ('Axa', 'Axan puisto');
INSERT INTO Teatteri (nimi, osoite) VALUES ('Rex', 'Forum');
INSERT INTO Teatteri (nimi, osoite) VALUES ('Tennispalatsi', 'Arkadiankatu');

CREATE TABLE Sali (
	id INTEGER PRIMARY KEY,
	nimi VARCHAR(32),
	teatteri_id INTEGER,
	FOREIGN KEY(teatteri_id) REFERENCES Teatteri(id)
);
INSERT INTO Sali (nimi, teatteri_id) VALUES ('Axa1', 1);
INSERT INTO Sali (nimi, teatteri_id) VALUES ('Axa2', 1);
INSERT INTO Sali (nimi, teatteri_id) VALUES ('Rex1', 2);
INSERT INTO Sali (nimi, teatteri_id) VALUES ('Rex2', 2);
INSERT INTO Sali (nimi, teatteri_id) VALUES ('TP1', 3);
INSERT INTO Sali (nimi, teatteri_id) VALUES ('TP2', 3);
INSERT INTO Sali (nimi, teatteri_id) VALUES ('TP3', 3);
INSERT INTO Sali (nimi, teatteri_id) VALUES ('TP4', 3);

CREATE TABLE Paikka (
	id INTEGER PRIMARY KEY,
	rivinro INTEGER,
	paikkanro INTEGER,
	sali_id INTEGER,
	FOREIGN KEY(sali_id) REFERENCES Sali(id)
);
-- Sali 1
INSERT INTO Paikka (rivinro, paikkanro, sali_id) VALUES (1,1,1);
INSERT INTO Paikka (rivinro, paikkanro, sali_id) VALUES (1,2,1);
INSERT INTO Paikka (rivinro, paikkanro, sali_id) VALUES (2,1,1);
INSERT INTO Paikka (rivinro, paikkanro, sali_id) VALUES (2,2,1);
INSERT INTO Paikka (rivinro, paikkanro, sali_id) VALUES (3,1,1);
INSERT INTO Paikka (rivinro, paikkanro, sali_id) VALUES (3,2,1);

-- Sali 2
INSERT INTO Paikka (rivinro, paikkanro, sali_id) VALUES (1,1,2);
INSERT INTO Paikka (rivinro, paikkanro, sali_id) VALUES (1,2,2);
INSERT INTO Paikka (rivinro, paikkanro, sali_id) VALUES (2,1,2);
INSERT INTO Paikka (rivinro, paikkanro, sali_id) VALUES (2,2,2);
INSERT INTO Paikka (rivinro, paikkanro, sali_id) VALUES (3,1,2);
INSERT INTO Paikka (rivinro, paikkanro, sali_id) VALUES (3,2,2);

-- Sali 3
INSERT INTO Paikka (rivinro, paikkanro, sali_id) VALUES (1,1,3);
INSERT INTO Paikka (rivinro, paikkanro, sali_id) VALUES (1,2,3);
INSERT INTO Paikka (rivinro, paikkanro, sali_id) VALUES (2,1,3);
INSERT INTO Paikka (rivinro, paikkanro, sali_id) VALUES (2,2,3);
INSERT INTO Paikka (rivinro, paikkanro, sali_id) VALUES (3,1,3);
INSERT INTO Paikka (rivinro, paikkanro, sali_id) VALUES (3,2,3);

-- Sali 4
INSERT INTO Paikka (rivinro, paikkanro, sali_id) VALUES (1,1,4);
INSERT INTO Paikka (rivinro, paikkanro, sali_id) VALUES (1,2,4);
INSERT INTO Paikka (rivinro, paikkanro, sali_id) VALUES (2,1,4);
INSERT INTO Paikka (rivinro, paikkanro, sali_id) VALUES (2,2,4);
INSERT INTO Paikka (rivinro, paikkanro, sali_id) VALUES (3,1,4);
INSERT INTO Paikka (rivinro, paikkanro, sali_id) VALUES (3,2,4);

-- Sali 5
INSERT INTO Paikka (rivinro, paikkanro, sali_id) VALUES (1,1,5);
INSERT INTO Paikka (rivinro, paikkanro, sali_id) VALUES (1,2,5);
INSERT INTO Paikka (rivinro, paikkanro, sali_id) VALUES (2,1,5);
INSERT INTO Paikka (rivinro, paikkanro, sali_id) VALUES (2,2,5);
INSERT INTO Paikka (rivinro, paikkanro, sali_id) VALUES (3,1,5);
INSERT INTO Paikka (rivinro, paikkanro, sali_id) VALUES (3,2,5);

-- Sali 6
INSERT INTO Paikka (rivinro, paikkanro, sali_id) VALUES (1,1,6);
INSERT INTO Paikka (rivinro, paikkanro, sali_id) VALUES (1,2,6);
INSERT INTO Paikka (rivinro, paikkanro, sali_id) VALUES (2,1,6);
INSERT INTO Paikka (rivinro, paikkanro, sali_id) VALUES (2,2,6);
INSERT INTO Paikka (rivinro, paikkanro, sali_id) VALUES (3,1,6);
INSERT INTO Paikka (rivinro, paikkanro, sali_id) VALUES (3,2,6);

-- Sali 7
INSERT INTO Paikka (rivinro, paikkanro, sali_id) VALUES (1,1,7);
INSERT INTO Paikka (rivinro, paikkanro, sali_id) VALUES (1,2,7);
INSERT INTO Paikka (rivinro, paikkanro, sali_id) VALUES (2,1,7);
INSERT INTO Paikka (rivinro, paikkanro, sali_id) VALUES (2,2,7);
INSERT INTO Paikka (rivinro, paikkanro, sali_id) VALUES (3,1,7);
INSERT INTO Paikka (rivinro, paikkanro, sali_id) VALUES (3,2,7);

-- Sali 8
INSERT INTO Paikka (rivinro, paikkanro, sali_id) VALUES (1,1,8);
INSERT INTO Paikka (rivinro, paikkanro, sali_id) VALUES (1,2,8);
INSERT INTO Paikka (rivinro, paikkanro, sali_id) VALUES (2,1,8);
INSERT INTO Paikka (rivinro, paikkanro, sali_id) VALUES (2,2,8);
INSERT INTO Paikka (rivinro, paikkanro, sali_id) VALUES (3,1,8);
INSERT INTO Paikka (rivinro, paikkanro, sali_id) VALUES (3,2,8);

CREATE TABLE Naytos (
	id INTEGER PRIMARY KEY,
	hinta REAL,
	aika text,
	elokuva_id INTEGER,
	sali_id INTEGER,
	FOREIGN KEY(elokuva_id) REFERENCES Elokuva(id),
	FOREIGN KEY(sali_id) REFERENCES Sali(id)

);
INSERT INTO Naytos (hinta, aika, elokuva_id, sali_id) VALUES (8.50, '2018-10-15 18:00:00.00',1,1);
INSERT INTO Naytos (hinta, aika, elokuva_id, sali_id) VALUES (7.50, '2018-10-15 18:00:00.00',2,2);
INSERT INTO Naytos (hinta, aika, elokuva_id, sali_id) VALUES (6.50, '2018-10-16 18:00:00.00',3,3);
INSERT INTO Naytos (hinta, aika, elokuva_id, sali_id) VALUES (4.50, '2018-10-16 18:00:00.00',2,4);
INSERT INTO Naytos (hinta, aika, elokuva_id, sali_id) VALUES (8.50, '2018-10-16 18:00:00.00',1,5);
INSERT INTO Naytos (hinta, aika, elokuva_id, sali_id) VALUES (5.50, '2018-10-16 18:00:00.00',2,6);
INSERT INTO Naytos (hinta, aika, elokuva_id, sali_id) VALUES (5.50, '2018-10-16 18:00:00.00',1,7);
INSERT INTO Naytos (hinta, aika, elokuva_id, sali_id) VALUES (6.50, '2018-10-16 18:00:00.00',2,8);
INSERT INTO Naytos (hinta, aika, elokuva_id, sali_id) VALUES (33.50, '2018-10-17 18:00:00.00',1,8);


CREATE TABLE NaytosPaikka (
	id INTEGER PRIMARY KEY,
	varattu INTEGER,
	naytos_id INTEGER,
	paikka_id INTEGER,
	FOREIGN KEY(naytos_id) REFERENCES Naytos(id),
	FOREIGN KEY(paikka_id) REFERENCES Paikka(id)
);

-- Näytös 1, sali 1 paikat
INSERT INTO NaytosPaikka (varattu, naytos_id, paikka_id) VALUES (0,1,1);
INSERT INTO NaytosPaikka (varattu, naytos_id, paikka_id) VALUES (0,1,2);
INSERT INTO NaytosPaikka (varattu, naytos_id, paikka_id) VALUES (0,1,3);
INSERT INTO NaytosPaikka (varattu, naytos_id, paikka_id) VALUES (0,1,4);
INSERT INTO NaytosPaikka (varattu, naytos_id, paikka_id) VALUES (0,1,5);
INSERT INTO NaytosPaikka (varattu, naytos_id, paikka_id) VALUES (0,1,6);

-- Näytös 2, sali 2 paikat
INSERT INTO NaytosPaikka (varattu, naytos_id, paikka_id) VALUES (0,2,1);
INSERT INTO NaytosPaikka (varattu, naytos_id, paikka_id) VALUES (0,2,2);
INSERT INTO NaytosPaikka (varattu, naytos_id, paikka_id) VALUES (0,2,3);
INSERT INTO NaytosPaikka (varattu, naytos_id, paikka_id) VALUES (0,2,4);
INSERT INTO NaytosPaikka (varattu, naytos_id, paikka_id) VALUES (0,2,5);
INSERT INTO NaytosPaikka (varattu, naytos_id, paikka_id) VALUES (0,2,6);

-- Näytös 3, sali 3 paikat
INSERT INTO NaytosPaikka (varattu, naytos_id, paikka_id) VALUES (0,3,1);
INSERT INTO NaytosPaikka (varattu, naytos_id, paikka_id) VALUES (0,3,2);
INSERT INTO NaytosPaikka (varattu, naytos_id, paikka_id) VALUES (0,3,3);
INSERT INTO NaytosPaikka (varattu, naytos_id, paikka_id) VALUES (0,3,4);
INSERT INTO NaytosPaikka (varattu, naytos_id, paikka_id) VALUES (0,3,5);
INSERT INTO NaytosPaikka (varattu, naytos_id, paikka_id) VALUES (0,3,6);

-- Näytös 4, sali 4 paikat
INSERT INTO NaytosPaikka (varattu, naytos_id, paikka_id) VALUES (0,4,1);
INSERT INTO NaytosPaikka (varattu, naytos_id, paikka_id) VALUES (0,4,2);
INSERT INTO NaytosPaikka (varattu, naytos_id, paikka_id) VALUES (0,4,3);
INSERT INTO NaytosPaikka (varattu, naytos_id, paikka_id) VALUES (0,4,4);
INSERT INTO NaytosPaikka (varattu, naytos_id, paikka_id) VALUES (0,4,5);
INSERT INTO NaytosPaikka (varattu, naytos_id, paikka_id) VALUES (0,4,6);

-- Näytös 5, sali 5 paikat
INSERT INTO NaytosPaikka (varattu, naytos_id, paikka_id) VALUES (0,5,1);
INSERT INTO NaytosPaikka (varattu, naytos_id, paikka_id) VALUES (0,5,2);
INSERT INTO NaytosPaikka (varattu, naytos_id, paikka_id) VALUES (0,5,3);
INSERT INTO NaytosPaikka (varattu, naytos_id, paikka_id) VALUES (0,5,4);
INSERT INTO NaytosPaikka (varattu, naytos_id, paikka_id) VALUES (0,5,5);
INSERT INTO NaytosPaikka (varattu, naytos_id, paikka_id) VALUES (0,5,6);

-- Näytös 6, sali 6 paikat
INSERT INTO NaytosPaikka (varattu, naytos_id, paikka_id) VALUES (0,6,1);
INSERT INTO NaytosPaikka (varattu, naytos_id, paikka_id) VALUES (0,6,2);
INSERT INTO NaytosPaikka (varattu, naytos_id, paikka_id) VALUES (0,6,3);
INSERT INTO NaytosPaikka (varattu, naytos_id, paikka_id) VALUES (0,6,4);
INSERT INTO NaytosPaikka (varattu, naytos_id, paikka_id) VALUES (0,6,5);
INSERT INTO NaytosPaikka (varattu, naytos_id, paikka_id) VALUES (0,6,6);

-- Näytös 7, sali 7 paikat
INSERT INTO NaytosPaikka (varattu, naytos_id, paikka_id) VALUES (0,7,1);
INSERT INTO NaytosPaikka (varattu, naytos_id, paikka_id) VALUES (0,7,2);
INSERT INTO NaytosPaikka (varattu, naytos_id, paikka_id) VALUES (0,7,3);
INSERT INTO NaytosPaikka (varattu, naytos_id, paikka_id) VALUES (0,7,4);
INSERT INTO NaytosPaikka (varattu, naytos_id, paikka_id) VALUES (0,7,5);
INSERT INTO NaytosPaikka (varattu, naytos_id, paikka_id) VALUES (0,7,6);

-- Näytös 8, sali 8 paikat
INSERT INTO NaytosPaikka (varattu, naytos_id, paikka_id) VALUES (0,8,1);
INSERT INTO NaytosPaikka (varattu, naytos_id, paikka_id) VALUES (0,8,2);
INSERT INTO NaytosPaikka (varattu, naytos_id, paikka_id) VALUES (0,8,3);
INSERT INTO NaytosPaikka (varattu, naytos_id, paikka_id) VALUES (0,8,4);
INSERT INTO NaytosPaikka (varattu, naytos_id, paikka_id) VALUES (0,8,5);
INSERT INTO NaytosPaikka (varattu, naytos_id, paikka_id) VALUES (0,8,6);

-- Näytös 9, sali 8 paikat
INSERT INTO NaytosPaikka (varattu, naytos_id, paikka_id) VALUES (0,8,1);
INSERT INTO NaytosPaikka (varattu, naytos_id, paikka_id) VALUES (0,8,2);
INSERT INTO NaytosPaikka (varattu, naytos_id, paikka_id) VALUES (0,8,3);
INSERT INTO NaytosPaikka (varattu, naytos_id, paikka_id) VALUES (0,8,4);
INSERT INTO NaytosPaikka (varattu, naytos_id, paikka_id) VALUES (0,8,5);
INSERT INTO NaytosPaikka (varattu, naytos_id, paikka_id) VALUES (0,8,6);



CREATE TABLE Lippu (
	id INTEGER PRIMARY KEY,
	tarkistusnumero text,
	kaytetty BOOLEAN,
	varaus_id INTEGER,
	naytospaikka_id INTEGER,
	FOREIGN KEY(varaus_id) REFERENCES Varaus(id),
	FOREIGN KEY(naytospaikka_id) REFERENCES NaytosPaikka(id)
);

CREATE TABLE Varaus (
	id INTEGER PRIMARY KEY,
	maksettu BOOLEAN,
	peruttu BOOLEAN,
	asiakas_id INTEGER,
	naytos_id INTEGER,
	FOREIGN KEY(asiakas_id) REFERENCES Asiakas(id),
	FOREIGN KEY(naytos_id) REFERENCES Naytos(id)
);