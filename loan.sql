CREATE TABLE loan (
clientId INT,
ISBN TEXT 
NOT NULL,
copyNumber INTEGER NOT NULL,
dateOut TEXT NOT NULL,
dateBack TEXT,
FOREIGN KEY (clientId) REFERENCES Client (clientId) ON DELETE SET NULL,
FOREIGN KEY (ISBN,copyNumber) REFERENCES BookCopy (ISBN,copyNumber)
);
