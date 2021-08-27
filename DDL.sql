USE master;
GO

--создаём базу данных
CREATE DATABASE SQL_FOR_ANALYTIC

GO

--создаём таблицу в нашей базе данных
USE SQL_FOR_ANALYTIC;
GO

CREATE TABLE dbo.ROOM
    (ID             tinyint IDENTITY(1.1)   NOT NULL
    ,ROOM_NAME      varchar(50)             NOT NULL
    ,IS_DEL         bit                     NOT NULL CONSTRAINT DF_ROOM_IS_DEL DEFAULT (0)
    ,CREATE_DATE    datetime                NOT NULL CONSTRAINT DF_ROOM_CREATE_DATE DEFAULT getdate()
    );
GO

--создаём представление
CREATE VIEW dbo.vMY_ROOM
AS
    SELECT *
    FROM dbo.ROOM AS r
    WHERE r.ID = (  
                    select mru.ROOM_ID 
                    from dbo.MAPPING_ROOM_USER as mru 
                    inner join dbo.USER as u 
                        on u.ID = mru.USER_ID 
                    where [USER_NAME] = SUSER_SNAME()
                )
;
GO

--создаём триггер на таблице ...
CREATE TRIGGER

GO

--создаём функцию
CREATE FUNCTION

GO

--создаём процедуру
CREATE PROCEDURE

GO
