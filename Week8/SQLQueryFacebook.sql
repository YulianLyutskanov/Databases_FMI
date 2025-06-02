CREATE TABLE Users(
id INT CONSTRAINT u_id UNIQUE,
email VARCHAR(30),
password VARCHAR(30),
date DATE
)

CREATE TABLE Friends(
_from INT,
_to INT
)

CREATE TABLE Walls(
userID INT,
text VARCHAR(2000),
date DATE
)

CREATE TABLE Groups(
id INT CONSTRAINT u_id UNIQUE,
name VARCHAR(30),
text VARCHAR(2000) DEFAULT '',
)

CREATE TABLE GroupMembers(
igroupID INT CONSTRAINT u_gID UNIQUE,
userID INT CONSTRAINT u_uID UNIQUE,
)

INSERT INTO Users 
VALUES(1,'yulian.lyutskanov@abv.bg', '1231324',GETDATE()),
(2, 'gosho@losho', 'sdadasd',GETDATE())
