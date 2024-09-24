CREATE TABLE BookEdition (
ISBN TEXT PRIMARY KEY
NOT NULL
UNIQUE
CHECK (length(ISBN) = 5),
title TEXT,
author TEXT NOT NULL,
publicationDate INTEGER NOT NULL,
genre TEXT NOT NULL
CONSTRAINT Valid_Checkdigit CHECK (SUBSTR(CAST (ISBN AS INT), 5, 1) = SUBSTR(3 * (SUBSTR(CAST (ISBN AS INT), 1, 1) + SUBSTR(CAST (ISBN AS INT), 3, 1) ) + 7 * (SUBSTR(CAST (ISBN AS INT), 2, 1) + SUBSTR(CAST (ISBN AS INT), 4, 1) ), -1) ) 
);