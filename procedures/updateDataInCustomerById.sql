USE [CustomerLib_Makarov]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updateDataInCustomerById]
	@CustomerId INT,
	@FirstName nvarchar(50),
	@LastName nvarchar(50),
	@CustomerPhoneNumber nvarchar(16),
	@CustomerEmail nvarchar(100),
	@Notes ntext,
	@TotalPurchasesAmount smallmoney
AS
BEGIN
	SET NOCOUNT ON;
	UPDATE Customers
	SET FirstName = @FirstName, LastName = @LastName, @CustomerPhoneNumber = @CustomerPhoneNumber, CustomerEmail = @CustomerEmail, Notes = @Notes, TotalPurchasesAmount = @TotalPurchasesAmount
	WHERE CustomerId = @CustomerId;
END;