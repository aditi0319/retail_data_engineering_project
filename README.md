# Retail Data Engineering Project

# Introduction

This project explores retail data analytics through modern data engineering practices. It utilizes Pandas for data manipulation, MySQL for data warehousing, and Power BI for data visualization, providing a comprehensive approach to analyzing and presenting retail data.

## Architecture
![Retail drawio](https://github.com/user-attachments/assets/927e326b-50cb-4f17-85ed-b14806e0f4d1)



## Technology Used
* Programming Language: Python
* Database: MySQL
* Data Visualization: Power BI
* Data Manipulation: Pandas
* APIs: Kaggle API

## Dataset Used
Retail sales data includes sales transactions, product categories, regions, and more, sourced from Kaggle.
*https://www.kaggle.com/datasets/ankitbansal06/retail-orders

## Load Data
The dataset is extracted using the Kaggle API. A script connects to Kaggle, downloads the dataset, and stores it locally for further analysis.

* Script: mySqlretail.sql

Complex queries have been written to derive actionable insights, such as:
Find top 10 highest revenue generating products
* Top 5 selling products in each regions
* MONTH OVER MONTH GROWTH COMPARISION FOR 2022 AND 2023 SALES eg: JAN 2022 V/S 2023
* MONTH OVER MONTH GROWTH COMPARISION FOR 2022 AND 2023 SALES eg: * JAN 2022 V/S 2023
* FOR EACH CATEGORY WHICH MONTH HAD HIGHEST SALES
* Which subcategory had highest growth by profit in 2023 compared to 2022

## Data Transformation:
Data cleaning, feature engineering, and preparation for MySQL loading are performed using Pandas in Python..

* Script: pyproject-checkpoint.ipynb

## Data Analysis and Visualization
Power BI and DAX are used for analyzing data and visualizing key metrics like highest-selling products by category, region, and subcategory, offering a comprehensive view of sales trends.
This approach ensures end-to-end data handling, from extraction to insightful visualization.







