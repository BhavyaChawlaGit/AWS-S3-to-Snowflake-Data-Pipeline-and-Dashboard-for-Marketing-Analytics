CREATE STORAGE INTEGRATION AWS_INTG
    TYPE = EXTERNAL_STAGE
    ENABLED = TRUE
    STORAGE_PROVIDER = S3
    STORAGE_ALLOWED_LOCATIONS = ('s3://<bucket/path>/')
    STORAGE_AWS_ROLE_ARN = 'arn:aws:iam::<your_AWS>:role/<your_IAM';


DESC STORAGE INTEGRATION AWS_INTG;

CREATE STAGE AWS_STG
URL= 's3://<bucket/path>/'
STORAGE_INTEGRATION = AWS_INTG;



ls @AWS_STG;


select $1 
from @AWS_STG;



CREATE FILE FORMAT csv
TYPE = CSV
FIELD_DELIMITER = ','
RECORD_DELIMITER = '\n'
SKIP_HEADER = 1;



-- Create the table
CREATE TABLE IF NOT EXISTS marketing_data (
    ID INT,
    Year_Birth INT,
    Education STRING,
    Marital_Status STRING,
    Income FLOAT,
    Kidhome INT,
    Teenhome INT,
    Dt_Customer DATE,
    Recency INT,
    MntWines FLOAT,
    MntFruits FLOAT,
    MntMeatProducts FLOAT,
    MntFishProducts FLOAT,
    MntSweetProducts FLOAT,
    MntGoldProds FLOAT,
    NumDealsPurchases INT,
    NumWebPurchases INT,
    NumCatalogPurchases INT,
    NumStorePurchases INT,
    NumWebVisitsMonth INT,
    AcceptedCmp3 INT,
    AcceptedCmp4 INT,
    AcceptedCmp5 INT,
    AcceptedCmp1 INT,
    AcceptedCmp2 INT,
    Response INT,
    Complain INT,
    Country STRING
);

COPY INTO marketing_data
FROM @AWS_STG
FILE_FORMAT = csv
PATTERN = '.*marketing_data.csv';


select * from marketing_data limit 10;

desc database marketingdashboard;

SHOW DATABASES;

SELECT CURRENT_DATABASE();

