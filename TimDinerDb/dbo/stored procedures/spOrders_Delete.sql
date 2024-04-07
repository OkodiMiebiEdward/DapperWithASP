CREATE PROCEDURE [dbo].[spOrders_Delete]
	@id int
AS
begin

    set nocount on;
	delete from dbo.[Order] where id = @id
end
