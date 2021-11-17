USE [CustomerLib_Makarov]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[sp_delete_data_from_customer_by_id]
	@CustomerId INT
AS
BEGIN
	SET NOCOUNT ON;
	DELETE FROM Customer
	WHERE CustomerId = @CustomerId
END;