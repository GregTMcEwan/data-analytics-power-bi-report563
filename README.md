# Quarterly Business Intelligence Report for Fictional Retailer

## Project Overview

This project involves the design and creation of a comprehensive quarterly business intelligence report for a medium-sized international retailer. The goal is to transform sales data from various regions into actionable insights, helping executives make informed decisions. The report was built using Microsoft Power BI and is based on a robust star schema data model that integrates and transforms data from multiple sources.

This project includes a detailed ETL process to handle large amounts of transactional sales data, the construction of DAX measures for dynamic calculations, and visualizations to provide insights into various business metrics, including sales, profit, customer performance, and retail store metrics.

## Key Features

- **Data Model:** Built using a star schema data model.
- **Sales Performance:** Breakdown of actual versus target performance for revenue, profit, and orders.
- **Customer Insights:** Analyzing customer-level data, including revenue per customer, weekly unique customers, customer distribution by country, and purchase behavior by product category.
- **Product Analysis:** Performance of top products categorized by type compared to their sales targets.
- **Retail Outlet Performance:** An interactive map visual highlighting store performance across various geographical locations.
- **Store Drillthrough** Summarizes individual store performance with visuals including top 5 products by orders, Total Orders by category, YTD Profit/Revenue gauges with a 20% growth target.
- **Executive Summary:** C-suite tailored executive dashboard showing key performance indicators and financial information.

## Objectives

- **Data Integration and ETL:** Extract and transform large datasets from multiple sources (Azure Storage, SQL Database, and CSV files) into a usable model for analysis.
- **Model Design:** Design a data model using a star schema for optimal performance in Power BI.
- **Visualization:** Design intuitive, interactive visuals (e.g., bar charts, gauges, and maps) to communicate insights on sales, profit, customer segments, and store performance.
- **Advanced Metrics:** Implement 25 DAX measures for key business metrics, including revenue, profit, growth rates, and time intelligence.


## ETL Process

- **Data Extraction:** Data is extracted from Azure Storage and SQL Database.
- **Data Transformation:** Using Power Query, the data is transformed into a star-based schema for efficient analysis.
  - 25 DAX Measures are implemented to handle calculations, including time intelligence measures like YTD, QTD, and previous period comparisons.
- **Data Loading:** Transformed data is loaded into Power BI for analysis and visualization.

## Instructions for Use

1. Download and open the Power BI Desktop file (.pbix file) from this repository.
2. Ensure the data source connections are configured correctly (Azure, SQL).
3. Open the Power BI report in Desktop mode to view the interactive visualizations.
4. Use slicers and drill-through functionality to explore performance by region, store type, and product categories.

## Folder Structure
```
/PowerBIReport
├── report.pbix   # Power BI report file with all visualizations
├── readme.md     # This README file
├── SQL Queries/  # Folder containing SQL queries to extract data
│   ├── question_1.sql    # Query to count staff in all UK stores
│   ├── question_2.sql    # Query to find the month with the highest revenue
│   ├── question_3.sql    # Query to identify the best performing store type
│   ├── question_4.sql    # Query to create a comprehensive sales view
│   ├── question_5.sql    # Query to identify best performing store in region
│   ├── question_1.csv    # Results of query 1
│   ├── question_2.csv    # Results of query 2
│   ├── question_3.csv    # Results of query 3
│   ├── question_4.csv    # Results of query 4
│   └── question_5.csv    # Results of query 5
```

## SQL Queries for Insights Outside Power BI

Five SQL queries were written to extract insights directly from the source data for use outside the Power BI environment.

## Challenges Faced

- **Data Cleansing:** Addressing issues like inconsistent date formats, incorrectly inputted data, and .
- **Large Dataset Handling:** Efficiently working with 120,000+ records of transactional data, ensuring quick query performance within Power BI.
- **Complex DAX Measures:** Handling advanced calculations like YTD, QTD, and time-based targets required deep knowledge of DAX and Power BI's data modeling capabilities.
- **Visual Design:** Creating interactive, insightful visuals while ensuring the report remains clear and understandable for C-suite executives.

## License

This project is licensed under the MIT License.
