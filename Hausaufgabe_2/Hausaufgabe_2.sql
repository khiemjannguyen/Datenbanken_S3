CREATE TABLE Projekt(
		ProjektID int NOT NULL,
    Projektbezeichnung varchar(255),
    Projektkurzbeschreibung mediumtext,
    Startdatum date,
    Abschlussdatum date,
    PRIMARY KEY (ProjektID),
    FOREIGN KEY (ProjektleiterID) REFERENCES Projektleiter (ProjektleiterID),
    FOREIGN KEY (MitarbeiterID) REFERENCES Mitarbeiter (MitarbeiterID)
);

CREATE TABLE Mitarbeiter(
		MitarbeiterID int NOT NULL,
    ProjektleiterID boolean NOT NULL,
    Vorname varchar(25) NOT NULL,
    Nachname varchar(25) NOT NULL,
    ResortID varchar(50) NOT NULL,
    PRIMARY KEY (MitarbeiterID),
    FOREIGN KEY (ResortID) REFERENCES Resort (ResortID),
    FOREIGN KEY (ProjektleiterID) REFERENCES Projektleiter (ProjektleiterID)
);

CREATE TABLE Projektleiter(
		ProjektleiterID int NOT NULL,
    ProjektID int NOT NULL,
    PRIMARY KEY (ProjekleiterID),
    FOREIGN KEY (ProjektID) REFERENCES Projekt (ProjektID)
);

CREATE TABLE Resort(
		ResortID int NOT NULL,
    Bezeichnung mediumtext,
    PRIMARY KEY (ResortID)
);