CREATE VIEW ReadingHistory as SELECT b.clientId,b.y AS yr,a.genre,COUNT(a.genre) AS numLoans FROM BookEdition AS a JOIN 
(SELECT clientId,loan.ISBN,STRFTIME('%Y',dateOut) AS y,loan.copyNumber FROM loan JOIN BookCopy
ON loan.ISBN=BookCopy.ISBN AND loan.copyNumber=BookCopy.copyNumber) AS b ON a.ISBN=b.ISBN GROUP BY genre,clientId,y;
