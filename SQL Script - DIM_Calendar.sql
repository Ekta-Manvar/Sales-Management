/* Cleansed DIM_Date Table */

SELECT [DateKey],
       [FullDateAlternateKey] AS [Date],
	   --[DayNumberOfWeek], 
	   LEFT([EnglishDayNameOfWeek],3) AS [Day],
	   --[SpanishDayNameOfWeek], 
       --[FrenchDayNameOfWeek], 
       --[DayNumberOfMonth], 
       --[DayNumberOfYear], 
       --[WeekNumberOfYear],
	   [WeekNumberOfYear] AS WeekNo,
	  LEFT([EnglishMonthName],3) AS [Month], /* Useful for front end graphs*/ 
	   --[SpanishMonthName], 
       --[FrenchMonthName],
       [MonthNumberOfYear] AS [MonthNo],
       [CalendarQuarter] AS [Quarter],
       [CalendarYear] AS [Year]
	   --[CalendarSemester],
	   --[FiscalQuarter], 
       --[FiscalYear], 
       --[FiscalSemester] 
      
  FROM [AdventureWorksDW2019].dbo.DimDate

  WHERE CalendarYear>=YEAR(GETDATE())-3  /* Ensures to get 3 years of data */
  














