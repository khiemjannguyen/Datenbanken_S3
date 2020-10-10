CREATE TABLE File(
	FileID int NOT NULL,
  Name varchar(255),
  Version varchar(10),
  Encoding varchar(10),
  PRIMARY KEY(FileID)
);

CREATE TABLE Header(
	HeaderID int NOT NULL,
  FileID int,
  ConfigName varchar(50),
  ActiveSince date,
  Timestmp timestamp,
  Vin varchar(200),
  InternalIdentification varchar(50),
  Odometer_unit varchar(10),
  Odometer_value int,
  PRIMARY KEY(HeaderID),
  FOREIGN KEY(FileID) REFERENCES File (FileID)
);

CREATE TABLE Method(
	MethodID int NOT NULL, 
  FileID int,
  UID varchar(100),
  Name varchar(200),
  Unit varchar(20),
  PRIMARY KEY(MethodID),
  FOREIGN KEY(FileID) REFERENCES File(FileID)
);

CREATE TABLE Activity(
	MethodID int,
  Name varchar(200),
  StartConfig varchar(100),
  StartOdometer_unit varchar(10),
  StartOdometer_value int,
  OdometerActivity_unit varchar(10),
  OdometerActivity_value int,
  FOREIGN KEY(MethodID) REFERENCES Method(MethodID)
);

CREATE TABLE Scalar(
  ScalarID int NOT NULL,
  MethodID integer,
  ValueIndex int,
  Value int,
  PRIMARY KEY(ScalarID),
  FOREIGN KEY(MethodID) REFERENCES Method(MethodID)
);

CREATE TABLE List(
  ListID int NOT NULL,
  MethodID integer,
  ValueIndex int,
  Value int,
  PRIMARY KEY(ListID),
  FOREIGN KEY(MethodID) REFERENCES Method(MethodID)
);

CREATE TABLE Array(
  ArrayID int NOT NULL,
  MethodID integer,
  ValueIndex int,
  Value int,
  PRIMARY KEY(ArrayID),
  FOREIGN KEY(MethodID) REFERENCES Method(MethodID)
);


