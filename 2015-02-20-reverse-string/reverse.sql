USE [_DataServices_Toolkit]
GO

/****** Object:  UserDefinedFunction [dbo].[ReverseText]    Script Date: 2/20/2015 6:34:59 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[ReverseText] (@TEXT NVARCHAR(MAX))
RETURNS NVARCHAR(MAX)
AS
BEGIN
	
	DECLARE @reversetext NVARCHAR(MAX), @i  INT
	
	SELECT @reversetext ='', @i = len(@text)

	WHILE @i>0
	BEGIN
		Select @Reversetext = @Reversetext + substring(@text,@i,1)
		Set @i = @i-1
	END
	RETURN @reversetext
END

GO


