USE [CustomerLib_Makarov]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_get_all_data_from_customer] AS
BEGIN
	SET NOCOUNT ON;
	SELECT * FROM Customer
END;