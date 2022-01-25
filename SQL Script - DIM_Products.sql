/****** Cleansed DIM_Products Table  ******/



  ALTER TABLE [AdventureWorksDW2019].dbo.DimProduct
  ALTER COLUMN [Status] 
  nvarchar(8) /* Changed the size of the field to fit outdated status (default is 7) */


SELECT p.[ProductKey],
       p.[ProductAlternateKey] AS ProductItemCode,
	   --[ProductSubcategoryKey], 
       --[WeightUnitMeasureCode],
       --[SizeUnitMeasureCode],
       p.[EnglishProductName] AS ProductName,
	   ps.[EnglishProductSubcategoryName] AS SubCategory, --joined in from subcategory table
	   pc.[EnglishProductCategoryName] AS Category, --joined in from category table
	   --[SpanishProductName],
       --[FrenchProductName],
       --[StandardCost],
       --[FinishedGoodsFlag],
       p.[Color],
	   --[SafetyStockLevel],
       --[ReorderPoint],
       --[ListPrice],
       p.[Size],
	   --[SizeRange],
       --[Weight],
       --[DaysToManufacture],
      p.[ProductLine],
	  --[DealerPrice],
      --[Class],
      --[Style], 
	  p.[ModelName],
	  --[LargePhoto],
	  p.[EnglishDescription] AS [Description],
	  --[FrenchDescription],
      --[ChineseDescription],
      --[ArabicDescription],
      --[HebrewDescription],
      --[ThaiDescription],
      --[GermanDescription],
      --[JapaneseDescription],
      --[TurkishDescription],
      --[StartDate], 
      --[EndDate], 
      ISNULL(p.[Status],'Outdated') AS ProductStatus

  FROM     [AdventureWorksDW2019].dbo.DimProduct p
  LEFT JOIN [AdventureWorksDW2019].dbo.DimProductSubcategory ps ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey
  LEFT JOIN [AdventureWorksDW2019].dbo.DimProductCategory pc ON ps.ProductCategoryKey = pc.ProductCategoryKey

 ORDER BY P.[ProductKey] ASC;

   
   