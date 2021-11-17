USE [CustomerLib_Makarov]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[sp_get_data_from_address_by_id] 
	@id INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT * FROM Address WHERE AddressId = @id
END;