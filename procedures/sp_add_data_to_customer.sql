USE [CustomerLib_Makarov]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_add_data_to_customer]
	@FirstName nvarchar(50),
	@LastName nvarchar(50),
	@CustomerPhoneNumber nvarchar(16),
	@CustomerEmail nvarchar(100),
	@Notes ntext,
	@TotalPurchasesAmount smallmoney
AS
BEGIN
	SET NOCOUNT ON;
	INSERT INTO Customer (FirstName, LastName, CustomerPhoneNumber, CustomerEmail, Notes, TotalPurchasesAmount)
	VALUES (@FirstName, @LastName, @CustomerPhoneNumber, @CustomerEmail, @Notes, @TotalPurchasesAmount)
END;