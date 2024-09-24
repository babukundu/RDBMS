CREATE TRIGGER calculatedays AFTER UPDATE OF dateBack
ON loan
FOR EACH ROW
WHEN NEW.ISBN=OLD.ISBN AND NEW.copyNumber=OLD.copyNumber AND NEW.clientId=OLD.clientId AND NEW.dateOut=OLD.dateOut
BEGIN
    UPDATE BookCopy
    SET daysLoaned = 
    CASE 
       WHEN daysLoaned IS NULL THEN (julianday(NEW.dateBack)-julianday(NEW.dateOut))
       WHEN daysLoaned IS NOT NULL THEN (daysLoaned+(julianday(NEW.dateBack)-julianday(NEW.dateOut)))
       ELSE NULL
   END
    WHERE ISBN=NEW.ISBN AND copyNumber=NEW.copyNumber;
END;
