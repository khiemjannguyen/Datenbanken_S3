CREATE TABLE Projekt(
		ProjektID int NOT NULL,
    Projektbezeichnung varchar(255),
    Projektkurzbeschreibung mediumtext,
    Startdatum date,
    Abschlussdatum date,
    ProjektleiterID int NOT NULL,
	MitarbeiterID int NOT NULL,
    PRIMARY KEY (ProjektID)
);

CREATE TABLE Projektleiter(
		ProjektleiterID int NOT NULL,
    ProjektID int NOT NULL,
    PRIMARY KEY (ProjektleiterID),
    FOREIGN KEY (ProjektID) REFERENCES Projekt (ProjektID)
);

CREATE TABLE Mitarbeiter(
		MitarbeiterID int NOT NULL,
    ProjektleiterID int NOT NULL,
    Vorname varchar(25) NOT NULL,
    Nachname varchar(25) NOT NULL,
    ResortID int NOT NULL,
    PRIMARY KEY (MitarbeiterID),
    FOREIGN KEY (ProjektleiterID) REFERENCES Projektleiter (ProjektleiterID)
);

CREATE TABLE Resort(
		ResortID int NOT NULL,
    Bezeichnung mediumtext,
    PRIMARY KEY (ResortID)
);

ALTER TABLE Projekt
ADD FOREIGN KEY (ProjektleiterID) REFERENCES Projektleiter (ProjektleiterID),
ADD FOREIGN KEY (MitarbeiterID) REFERENCES Mitarbeiter (MitarbeiterID); 

ALTER TABLE Mitarbeiter
ADD FOREIGN KEY (ResortID) REFERENCES Resort (ResortID); 
