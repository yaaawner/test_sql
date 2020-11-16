USE ClassNorthwind
GO
CREATE  FUNCTION 
fn_TaxRate (@ProdID int)
RETURNS numeric(5,4)
AS
BEGIN
DECLARE @TaxRate numeric(5,4)
SELECT @TaxRate=
CASE CategoryID 
      WHEN 1 THEN 1.10
      WHEN 2 THEN 1
      WHEN 3 THEN 1.10
      WHEN 4 THEN 1.05
      WHEN 5 THEN 1
      WHEN 6 THEN 1.05
      WHEN 7 THEN 1
      WHEN 8 THEN 1.05
   END
FROM   Products
Where ProductID=@ProdID
RETURN @TaxRate
END
GO
