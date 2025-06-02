CREATE TABLE Product(
model CHAR(4),
maker CHAR,
type VARCHAR(7)
)

CREATE TABLE Printer(
code INT,
model CHAR(4),
price DECIMAL(6,2)
)

INSERT INTO Product VALUES('INTE', 'A', 'DRAGON')
INSERT INTO Printer VALUES('3','SDQS', 1232.23)

ALTER TABLE Printer ADD 
type VARCHAR(6),
color CHAR,
CHECK (type IN ('laser', 'matrix', 'jet')),
CHECK (color IN ('y','n'))

ALTER TABLE Printer
DROP price

DROP TABLE Printer
DROP TABLE Product

