USE [DBProject]
GO
/****** Object:  StoredProcedure [dbo].[AddDoctor]    Script Date: 2/17/2025 1:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[AddDoctor]
@Name varchar(50) ,
@Email varchar(50),
@Password varchar(50),
@BirthDate Date,
@dept int , 
@gender char(1),
@Address varchar(50),
@Exp int , 
@Salary int,
@spec varchar(50) , 
@phone varchar(50) ,
@charges int , 
@qual varchar(50)

AS
BEGIN
PRINT 'Entering AddDoctor with Name: ' + @Name + ', Email: ' + @Email + ', BirthDate: ' + CONVERT(VARCHAR, @BirthDate, 120); -- Log parameters

DECLARE @id int
		
		insert into LoginTable values(@password, @email, 2)
		PRINT 'Inserted into LoginTable. Checking for LoginID...';  -- Log insert

		select @id = LoginID from LoginTable where email=@email	
		PRINT 'LoginID retrieved: ' + ISNULL(CAST(@id AS VARCHAR(10)), 'NULL'); -- Log the retrieved ID

		insert into Doctor values(@id, @name, @phone, @address, @BirthDate, @gender , @dept , @charges , @Salary , 0 , 0 , @qual , @spec ,@Exp , -1)
		PRINT 'Inserted into Doctor table.'; -- Log the second insert

		PRINT 'Exiting AddDoctor';
	
END




------------------------------------------(5)---------------------------------------
-------------------------------------------------------------------------------------

