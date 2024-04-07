/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

if not exists(select * from dbo.Food)
begin
  insert into dbo.Food (Title,[Description],Price)
  values('Cheese burger meal', 'A cheese burger, fries and a drink', 5.95),
  ('Cheese burger meal', 'A cheese burger, fries and a drink', 5.95),
  ('Chilli dog meal', 'Two chilli dog, fries and a drink', 4.95),
  ('Vegan meal', 'A large salad and water', 1.95)
end

