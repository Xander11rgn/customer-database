USE [CustomerLib_Makarov]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[sp_get_all_data_from_address] AS
BEGIN
	SET NOCOUNT ON;
	SELECT * FROM Address
END;