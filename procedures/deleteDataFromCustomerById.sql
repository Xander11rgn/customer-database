USE [CustomerLib_Makarov]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[deleteDataFromCustomerById]
	@CustomerId INT
AS
BEGIN
	SET NOCOUNT ON;
	DELETE FROM Customers
	WHERE CustomerId = @CustomerId
END;