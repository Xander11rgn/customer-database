USE [CustomerLib_Makarov]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[getDataFromAddressById] 
	@id INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT * FROM Addresses WHERE AddressId = @id
END;