/****** Cleansed DIM_Customers Table  ******/
SELECT c.[CustomerKey],
       --[GeographyKey],
       --[CustomerAlternateKey],
       --[Title],
       c.[FirstName],
	   --[MiddleName],
       c.[LastName],
       CONCAT(c.[FirstName],' ',c.[LastName]) AS FullName, /* Combined first and last name*/
       --[NameStyle],
       --[BirthDate],
       --[MaritalStatus],
       --[Suffix],
       CASE WHEN c.[Gender]='M' THEN 'Male'
	        WHEN c.[Gender]='F' THEN 'Female' 
	        END AS Gender,     /* based on condition returns the value */  
	   --[EmailAddress],
       --[YearlyIncome],
       --[TotalChildren],
       --[NumberChildrenAtHome],
       --[EnglishEducation],
       --[SpanishEducation],
       --[FrenchEducation],
       --[EnglishOccupation],
       --[SpanishOccupation],
       --[FrenchOccupation],
       --[HouseOwnerFlag],
       --[NumberCarsOwned],
       --[AddressLine1],
       --[AddressLine2],
       --[Phone],
	   c.[DateFirstPurchase],
	   --[CommuteDistance],
	   g.EnglishCountryRegionName AS Country,
	   g.StateProvinceName AS [State],
	   g.[City]

  FROM [AdventureWorksDW2019].[dbo].[DimCustomer] c
  LEFT JOIN [AdventureWorksDW2019].[dbo].[DimGeography] g --joined geography table with customer table
  ON c.[GeographyKey]=g.[GeographyKey]

  ORDER BY  c.CustomerKey -- ordered by customer key 