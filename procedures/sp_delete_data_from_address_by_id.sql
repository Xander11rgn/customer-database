USE [CustomerLib_Makarov]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[sp_delete_data_from_address_by_id]
	@AddressId INT
AS
BEGIN
	SET NOCOUNT ON;
	DELETE FROM Address
	WHERE AddressId = @AddressId
END;