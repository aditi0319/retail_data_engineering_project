# Retail Data Engineering Project

# Introduction
This project delves into the world of retail data analytics using modern data engineering practices. We'll leverage tools like Pandas for data manipulation, MySQL for data warehousing, and Power BI for data visualization.

## Architecture
![Retail drawio](https://github.com/user-attachments/assets/927e326b-50cb-4f17-85ed-b14806e0f4d1)

##Technology Used
Programming Language: Python
Database: MySQL
Data Visualization: Power BI
Data Manipulation: Pandas
APIs: Kaggle API

##Dataset Used
Retail Sales Data: This dataset includes fields capturing sales transactions, product categories, regions, and more. The data is sourced from Kaggle.
https://www.kaggle.com/datasets/sudhanshu1st/retail-store-orders-dataset

##Scripts for Project

###Extract Data
The data is extracted using the Kaggle API. The script connects to Kaggle, downloads the dataset, and saves it locally.

###Load Data
The cleaned and transformed data is loaded into a MySQL database for further analysis.

Script: Mysqlscript.sql
Also written some complex queries to calculate:

Find top 10 highest revenue generating products
Top 5 selling products in each regions
MONTH OVER MONTH GROWTH COMPARISION FOR 2022 AND 2023 SALES eg: JAN 2022 V/S 2023
MONTH OVER MONTH GROWTH COMPARISION FOR 2022 AND 2023 SALES eg: JAN 2022 V/S 2023
FOR EACH CATEGORY WHICH MONTH HAD HIGHEST SALES
Which subcategory had highest growth by profit in 2023 compared to 2022
Transform Data
Pandas is used to clean the data, add new features, and prepare it for loading into MySQL.

Script: retail-orders-notebook.py
