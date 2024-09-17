
# Integration Documentation

## 1. Export Data from SQL Database
The data required for the project is extracted from the database via SQL queries. Below is an example of how data is exported to CSV format for further analysis in Excel:
```sql
SELECT * FROM Costs INTO OUTFILE 'costs.csv'
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n';
```

## 2. Import Data into Excel
In Excel, use the `Data` > `From Text/CSV` feature to import the data into a worksheet.

## 3. Set Up Pivot Tables
Using the imported data, create pivot tables to analyze energy costs, economic impact, and environmental effects.

## 4. Create Charts
Generate charts (e.g., bar, pie charts) for visualizing insights and trends from the pivot table data.

## 5. Dashboard Creation
Using Excel slicers and pivot charts, we create an interactive dashboard that allows dynamic data filtering by region, provider, and energy source.

## Data Consistency Checks
SQL query results were validated by comparing the output in Excel to ensure accurate data representation.
