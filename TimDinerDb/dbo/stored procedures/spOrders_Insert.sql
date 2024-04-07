CREATE PROCEDURE [dbo].[spOrders_Insert]
	@orderName nvarchar(50),
	@orderDate dateTime2(7),
	@foodId int,
	@quantity int,
	@total money,
	@id int output

AS
begin
    set nocount on;
	insert into dbo.[Order] ([OrderName], [OrderDate], [FoodId], [Quantity], [Total])
	values(@orderName, @orderDate, @foodId, @quantity, @total);

	set @id = SCOPE_IDENTITY();
end
