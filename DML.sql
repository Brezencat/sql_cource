INSERT INTO dbo.ROOM
  (ROOM_NAME)
VALUES ('My room');

GO

SELECT *
FROM dbo.ROOM
WHERE ROOM_NAME = 'My room';

UPDATE dbo.ROOM
SET IS_DEL = 1
WHERE ROOM_NAME = 'My room';

GO

DELETE FROM dbo.ROOM 
WHERE ROOM_NAME = 'My room';

GO
