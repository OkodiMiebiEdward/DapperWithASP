CREATE PROCEDURE [dbo].[spOrders_UpdateName]
	@id int,
	@orderName nvarchar(50)

AS
Begin
	--select [Id], [Title], [Description], [Price]
	--from dbo.Food
	update dbo.[Order]
	set OrderName = @orderName
	where Id = @id
End
