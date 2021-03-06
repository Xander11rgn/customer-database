USE [CustomerLib_Makarov]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[updateDataInAddressById]
	@AddressId int,
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
	UPDATE Addresses
	SET CustomerId = @CustomerId, AddressLine = @AddressLine, AddressLine2 = @AddressLine2, AddressTypeId = @AddressTypeId, City = @City, PostalCode = @PostalCode, State = @State, CountryId = @CountryId
	WHERE AddressId = @AddressId
END;