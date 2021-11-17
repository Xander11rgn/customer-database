USE [CustomerLib_Makarov]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_get_data_from_customer_by_id] 
	@id INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT * FROM Customer WHERE CustomerId = @id
END;