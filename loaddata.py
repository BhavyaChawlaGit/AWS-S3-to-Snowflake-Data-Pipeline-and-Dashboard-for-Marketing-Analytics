import snowflake.connector

# Define your connection parameters
conn_params = {
    'user': 'your_username',
    'password': 'your_password',
    'account': 'your_account_identifier',
    'warehouse': 'your_warehouse',
    'database': 'your_database',
    'schema': 'your_schema'
}

# Establish the connection to Snowflake
conn = snowflake.connector.connect(**conn_params)

# Create a cursor object
cur = conn.cursor()

# SQL command to create the table (modify as per your table schema)
create_table_sql = """
CREATE TABLE IF NOT EXISTS your_table_name (
    column1 datatype1,
    column2 datatype2,
    ...
);
"""

# Execute the create table command
cur.execute(create_table_sql)

# SQL command to copy data from the stage to the Snowflake table
copy_into_sql = """
COPY INTO your_table_name
FROM @AWS_STG
FILE_FORMAT = (TYPE = CSV FIELD_OPTIONALLY_ENCLOSED_BY = '"' SKIP_HEADER = 1);
"""

# Execute the copy command
cur.execute(copy_into_sql)

# Commit the transaction
conn.commit()

# Close the cursor and connection
cur.close()
conn.close()

print("Data loaded successfully from S3 to Snowflake table.")
