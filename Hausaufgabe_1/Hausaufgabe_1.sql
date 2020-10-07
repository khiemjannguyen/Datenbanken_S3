CREATE TABLE Softdrink (
	SoftdrinkID int NOT NULL,
    Name varchar(255) NOT NULL,
    Flavor varchar(255) NOT NULL,
    Color varchar(255) NOT NULL,
    PRIMARY KEY (SoftdrinkID)
);

INSERT INTO Softdrink VALUES (00, 'Coca Cola', 'Cola', 'Black');
INSERT INTO Softdrink VALUES (01, 'Fanta', 'Orange', 'Orange');
INSERT INTO Softdrink VALUES (02, 'Sprite', 'Lemon', 'Transparent');
INSERT INTO Softdrink VALUES (03, 'Ice Tea', 'Peach', 'Brown');

SELECT Name, Flavor 
FROM Softdrink;

SELECT COUNT (SoftdrinkID)
FROM Softdrinks
WHERE SoftdrinkID > 2;

SELECT SUM (1)
FROM Softdrinks
WHERE SoftdrinkID > 2;

SELECT Name
FROM Softdrinks
ORDER BY SoftdrinkID DESC;



