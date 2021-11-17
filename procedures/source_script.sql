/*USE CustomerLib_Makarov;
GO
CREATE PROCEDURE sp_get_all_data_from_customer AS
BEGIN
	SET NOCOUNT ON;
	SELECT * FROM Customer
END;

exec sp_get_all_data_from_customer;*/


/*USE CustomerLib_Makarov;
GO
CREATE PROCEDURE sp_get_data_from_customer_by_id 
	@id INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT * FROM Customer WHERE CustomerId = @id
END;

exec sp_get_data_from_customer_by_id @id = 62*/

/*USE CustomerLib_Makarov;
GO
ALTER PROCEDURE sp_add_data_to_customer
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


GO
DECLARE @FirstName nvarchar(50), @LastName nvarchar(50),@CustomerPhoneNumber nvarchar(16),@CustomerEmail nvarchar(100),	@Notes nvarchar(MAX),@TotalPurchasesAmount smallmoney;
SET @FirstName = 'Bill'
SET @LastName = 'Joel'
SET @CustomerPhoneNumber = '+1567865'
SET @CustomerEmail = 'bill@joel.com'
SET @Notes = 'test'
SET @TotalPurchasesAmount = 5
exec sp_add_data_to_customer @FirstName, @LastName, @CustomerPhoneNumber, @CustomerEmail, @Notes, @TotalPurchasesAmount*/


/*USE CustomerLib_Makarov;
GO
CREATE PROCEDURE sp_delete_data_from_customer_by_id
	@CustomerId INT
AS
BEGIN
	SET NOCOUNT ON;
	DELETE FROM Customer
	WHERE CustomerId = @CustomerId
END;


exec sp_delete_data_from_customer_by_id @CustomerId = 65*/

/*USE CustomerLib_Makarov;
GO
CREATE PROCEDURE sp_update_data_in_customer_by_id
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
	UPDATE Customer
	SET FirstName = @FirstName, LastName = @LastName, @CustomerPhoneNumber = @CustomerPhoneNumber, CustomerEmail = @CustomerEmail, Notes = @Notes, TotalPurchasesAmount = @TotalPurchasesAmount
	WHERE CustomerId = @CustomerId;
END;


GO
DECLARE @CustomerId int, @FirstName nvarchar(50), @LastName nvarchar(50),@CustomerPhoneNumber nvarchar(16),@CustomerEmail nvarchar(100),	@Notes nvarchar(MAX),@TotalPurchasesAmount smallmoney;
SET @CustomerId = 62
SET @FirstName = 'Bill'
SET @LastName = 'Joel'
SET @CustomerPhoneNumber = '+1567865'
SET @CustomerEmail = 'bill@joel.com'
SET @Notes = 'test'
SET @TotalPurchasesAmount = 5
exec sp_update_data_in_customer_by_id @CustomerId, @FirstName, @LastName, @CustomerPhoneNumber, @CustomerEmail, @Notes, @TotalPurchasesAmount*/



/*USE CustomerLib_Makarov;
GO
CREATE PROCEDURE sp_get_all_data_from_address AS
BEGIN
	SET NOCOUNT ON;
	SELECT * FROM Address
END;

exec sp_get_all_data_from_address;*/


/*USE CustomerLib_Makarov;
GO
CREATE PROCEDURE sp_get_data_from_address_by_id 
	@id INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT * FROM Address WHERE AddressId = @id
END;

exec sp_get_data_from_address_by_id @id = 2*/



/*USE CustomerLib_Makarov;
GO
CREATE PROCEDURE sp_add_data_to_address
	@CustomerId int,
	@AddressLine nvarchar(100),
	@AddressLine2 nvarchar(100),
	@AddressTypeId int,
	@City nvarchar(50),
	@PostalCode nvarchar(6),
	@State nvarchar(20),
	@CountryId int
AS
BEGIN
	SET NOCOUNT ON;
	INSERT INTO Address(CustomerId, AddressLine, AddressLine2, AddressTypeId, City, PostalCode, State, CountryId)
	VALUES (@CustomerId, @AddressLine, @AddressLine2, @AddressTypeId, @City, @PostalCode, @State, @CountryId)
END;


GO
DECLARE @CustomerId int, @AddressLine nvarchar(100),@AddressLine2 nvarchar(100),@AddressTypeId int, @City nvarchar(50), @PostalCode nvarchar(6), @State nvarchar(20), @CountryId int;
SET @CustomerId = 59
SET @AddressLine = 'test2'
SET @AddressLine2 = NULL
SET @AddressTypeId = 2
SET @City = 'test2'
SET @PostalCode = '4564'
SET @State = 'test2'
SET @CountryId = 1
exec sp_add_data_to_address @CustomerId, @AddressLine, @AddressLine2 ,@AddressTypeId, @City, @PostalCode, @State, @CountryId*/


/*USE CustomerLib_Makarov;
GO
CREATE PROCEDURE sp_delete_data_from_address_by_id
	@AddressId INT
AS
BEGIN
	SET NOCOUNT ON;
	DELETE FROM Address
	WHERE AddressId = @AddressId
END;


exec sp_delete_data_from_address_by_id @AddressId = 4*/



/*USE CustomerLib_Makarov;
GO
CREATE PROCEDURE sp_update_data_in_address_by_id
	@AddressId int,
	@CustomerId int,
	@AddressLine nvarchar(100),
	@AddressLine2 nvarchar(100),
	@AddressTypeId int,
	@City nvarchar(50),
	@PostalCode nvarchar(6),
	@State nvarchar(20),
	@CountryId int
AS
BEGIN
	SET NOCOUNT ON;
	UPDATE Address
	SET CustomerId = @CustomerId, AddressLine = @AddressLine, AddressLine2 = @AddressLine2, AddressTypeId = @AddressTypeId, City = @City, PostalCode = @PostalCode, State = @State, CountryId = @CountryId
	WHERE AddressId = @AddressId
END;


GO
DECLARE @AddressId int, @CustomerId int, @AddressLine nvarchar(100),@AddressLine2 nvarchar(100),@AddressTypeId int, @City nvarchar(50), @PostalCode nvarchar(6), @State nvarchar(20), @CountryId int;
SET @AddressId = 2
SET @CustomerId = 59
SET @AddressLine = 'some address'
SET @AddressLine2 = NULL
SET @AddressTypeId = 2
SET @City = 'some city'
SET @PostalCode = '4564'
SET @State = 'some state'
SET @CountryId = 1
exec sp_ipdate_data_in_address_by_id @AddressId, @CustomerId, @AddressLine, @AddressLine2 ,@AddressTypeId, @City, @PostalCode, @State, @CountryId*/