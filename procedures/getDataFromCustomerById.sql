USE [CustomerLib_Makarov]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getDataFromCustomerById] 
	@id INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT * FROM Customers WHERE CustomerId = @id
END;