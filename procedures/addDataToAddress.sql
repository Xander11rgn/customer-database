USE [CustomerLib_Makarov]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[addDataToAddress]
	@CustomerId int,
	@AddressLine nvarchar(100),
	@AddressLine2 nvarchar(100),
	@AddressTypeId int,
	@City nvarchar(50),
	@PostalCode nvarchar(6),
	@State nvarchar(20),
	@CountryId int
AS
BEGIN
	SET NOCOUNT ON;
	INSERT INTO Addresses(CustomerId, AddressLine, AddressLine2, AddressTypeId, City, PostalCode, State, CountryId)
	VALUES (@CustomerId, @AddressLine, @AddressLine2, @AddressTypeId, @City, @PostalCode, @State, @CountryId)
END;