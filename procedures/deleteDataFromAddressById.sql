USE [CustomerLib_Makarov]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[deleteDataFromAddressById]
	@AddressId INT
AS
BEGIN
	SET NOCOUNT ON;
	DELETE FROM Addresses
	WHERE AddressId = @AddressId
END;