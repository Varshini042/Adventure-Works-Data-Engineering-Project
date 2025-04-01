--------------------------------------------------
--ALTER VIEW CALENDAR
----------------------------------------

ALTER VIEW gold.calendar
AS
SELECT * FROM
OPENROWSET(
    BULK 'https://awstoragedatalakev.blob.core.windows.net/silver/AdventureWorks_Calendar/',
    FORMAT = 'PARQUET'

) AS QUERY1

--------------------------------------------------
--ALTER VIEW CUSTOMERS
----------------------------------------

ALTER VIEW gold.customers
AS
SELECT * FROM
OPENROWSET(
    BULK 'https://awstoragedatalakev.blob.core.windows.net/silver/AdventureWorks_Customers/',
    FORMAT = 'PARQUET'

) AS QUERY1

--------------------------------------------------
--ALTER VIEW PRODUCTS
----------------------------------------

ALTER VIEW gold.products
AS
SELECT * FROM
OPENROWSET(
    BULK 'https://awstoragedatalakev.blob.core.windows.net/silver/AdventureWorks_Products/',
    FORMAT = 'PARQUET'

) AS QUERY1

--------------------------------------------------
--ALTER VIEW RETURNS
----------------------------------------

ALTER VIEW gold.returns
AS
SELECT * FROM
OPENROWSET(
    BULK 'https://awstoragedatalakev.blob.core.windows.net/silver/AdventureWorks_Returns/',
    FORMAT = 'PARQUET'

) AS QUERY1

--------------------------------------------------
--ALTER VIEW SALES
----------------------------------------

ALTER VIEW gold.sales
AS
SELECT * FROM
OPENROWSET(
    BULK 'https://awstoragedatalakev.blob.core.windows.net/silver/AdventureWorks_Sales/',
    FORMAT = 'PARQUET'

) AS QUERY1


--------------------------------------------------
--ALTER VIEW SUBCATEGORIES
----------------------------------------

ALTER VIEW gold.subcategories
AS
SELECT * FROM
OPENROWSET(
    BULK 'https://awstoragedatalakev.blob.core.windows.net/silver/AdventureWorks_SubCategories/',
    FORMAT = 'PARQUET'

) AS QUERY1




--------------------------------------------------
--ALTER VIEW TERRITORIES
----------------------------------------

ALTER VIEW gold.territories
AS
SELECT * FROM
OPENROWSET(
    BULK 'https://awstoragedatalakev.blob.core.windows.net/silver/AdventureWorks_Territories/',
    FORMAT = 'PARQUET'

) AS QUERY1








