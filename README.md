[README (2) (1).md](https://github.com/user-attachments/files/33062749/README.2.1.md)
# Walmart Retail Sales Analytics

## Overview

This project analyzes historical Walmart store sales to identify the main factors associated with weekly sales performance and to test whether a simple regression model can explain part of the variation in sales.

The project combines Python, SQL, data visualization, correlation analysis, and linear regression in a complete business analytics workflow.

## Business Question

What factors drive weekly sales across Walmart stores, and can a simple model help explain sales performance?

## Dataset

The analysis uses the Walmart Recruiting - Store Sales Forecasting dataset.

The main files used are:

- `train.csv` -> weekly sales by store and department
- `features.csv` -> economic and environmental variables
- `stores.csv` -> store type and size

The dataset contains information on 45 Walmart stores, including:

- Weekly sales
- Store type
- Store size
- Holiday periods
- Temperature
- Fuel price
- Consumer Price Index (CPI)
- Unemployment

The raw department-level data is aggregated into a store-week level dataset for the main analysis.

## Tools and Skills

- Python
- pandas
- NumPy
- Matplotlib
- SQL / SQLite
- Data cleaning and merging
- GroupBy analysis
- Data visualization
- Correlation analysis
- Train/test split
- Linear regression
- MAE and R² model evaluation
- Business interpretation

## Project Workflow

1. Load and inspect the three source datasets.
2. Convert dates into a usable format.
3. Merge sales, store, and economic data.
4. Aggregate department sales into total weekly sales by store.
5. Check missing values and duplicates.
6. Analyze sales performance by store type, store size, holidays, store, and month.
7. Examine correlations between weekly sales and explanatory variables.
8. Use SQL to answer additional business questions.
9. Build a simple linear regression model.
10. Translate the results into business insights and recommendations.

## Key Findings

### Store type

Type A stores generated the highest average weekly sales at approximately $1.38 million, followed by Type B at about $823,000 and Type C at about $473,000.

### Store size

Store size had a strong positive correlation with weekly sales of approximately 0.81. This suggests that larger stores generally generated higher weekly sales in this dataset.

### Holiday effect

Average weekly sales were approximately:

- $1.12 million during holiday weeks
- $1.04 million during non-holiday weeks

Holiday weeks therefore generated around 7.84% higher average weekly sales.

### Seasonality

December recorded the highest average weekly sales at approximately $1.28 million, followed by November at approximately $1.15 million.

This indicates a clear increase in sales toward the end of the year.

### Economic variables

Most external economic variables had relatively weak linear relationships with weekly sales compared with store size.

Correlations with weekly sales included:

| Variable | Correlation |
|---|---:|
| Store Size | 0.810 |
| Holiday | 0.037 |
| Fuel Price | 0.009 |
| Temperature | -0.064 |
| CPI | -0.073 |
| Unemployment | -0.106 |

These results suggest that store characteristics and seasonal effects are more strongly associated with sales than the economic variables included in this analysis.

## Regression Model

A simple linear regression model was built using:

- Store size
- Temperature
- Fuel price
- CPI
- Unemployment
- Holiday indicator

The model achieved:

- R²: 0.662
- Mean Absolute Error: approximately $247,929

An R² of 0.662 means that the variables included in the model explain about 66.2% of the variation in weekly store sales.

The model is intentionally simple and is used mainly to demonstrate how business variables can be combined in a basic predictive analysis.

## Business Recommendations

Based on the analysis:

- Store format and store size should be considered when setting store-level sales expectations.
- Inventory and staffing plans should account for stronger demand during holiday periods and the final months of the year.
- Larger stores may require different performance benchmarks from smaller stores.
- External economic indicators can be used as supporting information, but they should not be relied on alone for store-level sales planning.
- A more advanced forecasting model could later include department-level behavior, promotional markdowns, local competition, and additional historical data.


 
