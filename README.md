# AWS S3 to Snowflake Data Pipeline and Dashboard for Marketing Analytics

## Project Overview

This project demonstrates the creation of a scalable data pipeline using AWS S3 and Snowflake to manage marketing data efficiently. The pipeline includes data ingestion, transformation, and storage, followed by data analysis and visualization using Power BI.

## Project Steps

### Task 1: Load to Database, Connect Database - Snowflake

#### Step 1: Set Up AWS S3
- Created an S3 bucket to store raw marketing data.
- Uploaded CSV files to the S3 bucket.

#### Step 2: Set Up Snowflake
- Created a Snowflake account.
- Created a database and table in Snowflake.

#### Step 3: Set Up AWS IAM Roles and Policies
- Created an IAM role for Snowflake with the necessary permissions.
- Retrieved the ARN of the IAM role.

#### Step 4: Set Up Python Environment (Optional)
- Installed libraries like `boto3`, `pandas`, and `snowflake-connector-python` using pip.
- Created a Python script (`loaddata.py`) for the ETL process.

#### Step 5: Run the ETL Script (Optional)
- Executed the Python script to load data from S3 to Snowflake.

#### Step 6: Use Integration SQL for Data Ingestion
- Used `integration.sql` to set up Snowflake stages and file formats.
- Loaded data from S3 to Snowflake using SQL commands.

### Task 2: Measure Creation, Create Age Group

#### Step 1: Measure Creation - High Spenders
- Created measures to identify high spenders.

#### Step 2: Data Cleansing - NULL Values Replacement
- Replaced NULL values with average spending per country.

#### Step 3: Statistical Analysis
- Performed statistical analysis on the cleansed data.

### Task 3: Dashboard Creation
- Created a Power BI dashboard to visualize the insights derived from the data.

## Project Highlights

### Building a Scalable Data Pipeline with AWS, Snowflake, and Python

1. **Data Storage with AWS S3**:
   - Set up secure and scalable storage for raw marketing data in AWS S3.
   - Organized S3 buckets to manage raw and processed datasets effectively.

2. **Data Staging and Integration with Snowflake**:
   - Created a Storage Integration in Snowflake to seamlessly connect with AWS S3.
   - Established an External Stage in Snowflake to load data directly from S3.

3. **Automated Data Loading with Python**:
   - Leveraged Python scripts to automate the data loading process from S3 to Snowflake.
   - Integrated Snowflake and Python to handle large-scale data operations.

4. **Data Transformation in Snowflake**:
   - Utilized Snowflake’s powerful SQL capabilities for data transformation and loading into analytical tables.

### Transforming Marketing Data into Insights with the 4Ps Strategy

1. **Product Focus**:
   - Identified Wines and Meat as the highest revenue-generating products.

2. **Place Strategy**:
   - Conducted geographic analysis to uncover that Spain accounts for nearly 50% of total sales.

3. **People Insights**:
   - Boomers and GenX emerged as the most valuable customer segments.
   - Couples (Married and Together) contribute a significant 63.62% of total revenue.
   - Families without kids/teens showed the highest responsiveness to campaigns.

4. **Promotion Strategy**:
   - Analyzed campaign effectiveness to find that the Campaign Response was the most successful across all key segments.

## Results

The project successfully demonstrated the integration of AWS S3 and Snowflake to create a robust data pipeline. The data was transformed and loaded into Snowflake, where it was further analyzed and visualized using Power BI. The insights derived from the data helped in understanding customer behavior and optimizing marketing strategies.

## Files in the Repository

- `loaddata.py` (Optional): Python script to load data from S3 to Snowflake.
- `integration.sql`: SQL script to set up Snowflake stages and file formats.
- `report.pdf`: Detailed report of the project.
- `dashboard.pbix`: Power BI dashboard file.
- `presentation.m4v`: Presentation video of the project.

## Technical Skills Applied

- AWS S3
- Snowflake
- Python
- SQL
- ETL
- Data Pipeline
- Power BI
- Marketing Analytics
- Data Science
- Customer Segmentation
- Data Visualization
- Marketing Strategy
- Campaign Optimization

## Conclusion

This project was an exciting journey that blended robust data engineering with advanced data management techniques. Using AWS, Snowflake, and Python together allowed us to streamline the data pipeline, optimize performance, and prepare data for deep analytics.

Looking forward to any feedback or suggestions!

## Contact

For more information, please visit my [LinkedIn](https://www.linkedin.com/in/bhavyachawla/) or [GitHub](https://github.com/BhavyaChawlaGit).