CREATE DATABASE SCOPED CREDENTIAL cred_v
WITH
IDENTITY = 'Managed Identity'


CREATE EXTERNAL DATA SOURCE source_silver
WITH(
    LOCATION='https://awstoragedatalakev.blob.core.windows.net/silver',
    CREDENTIAL= cred_v
)

CREATE EXTERNAL DATA SOURCE source_gold
WITH(
    LOCATION='https://awstoragedatalakev.blob.core.windows.net/gold',
    CREDENTIAL= cred_v
)

CREATE EXTERNAL FILE FORMAT format_parquet
WITH(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)
---------- create ext tbl as ext sales

CREATE EXTERNAL TABLE gold.wxtsales
WITH
(
    LOCATION = 'extsales',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
) as 
SELECT * FROM  gold.sales



select * from gold.wxtsales





