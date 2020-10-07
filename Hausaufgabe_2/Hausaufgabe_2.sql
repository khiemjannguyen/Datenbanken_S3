CREATE TABLE Projekt(
	ProjektID int NOT NULL,
    Projektbezeichnung mediumtext,
    Startdatum date,
    Abschlussdatum date,
    ProjektleiterID int,
    MitarbeiterID int,
    PRIMARY KEY (ProjektID),
    FOREIGN KEY (ProjektleiterID) REFERENCES Projektleiter (ProjektleiterID),
    FOREIGN KEY (MitarbeiterID) REFERENCES Mitarbeiter (MitarbeiterID)
);

CREATE TABLE MITARBEITER(
	MitarbeiterID int NOT NULL,
    ProjektleiterID int NOT NULL,
    Vorname varchar(25) NOT NULL,
    Nachname varchar(25) NOT NULL,
    Resort varchar(50) NOT NULL,
    PRIMARY KEY (MitarbeiterID),
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
    MitarbeiterID int,
    PRIMARY KEY (ResortID),
    FOREIGN KEY (MitarbeiterID) REFERENCES MITARBEITER (MitarbeiterID)
);