# Walmart Retail Sales Analytics

## Overview

This project analyzes historical Walmart store sales to identify the main factors associated with weekly sales performance and to test whether a simple regression model can explain part of the variation in sales.

The project combines **Python, SQL, data visualization, correlation analysis, and linear regression** in a complete business analytics workflow.

## Business Question

**What factors drive weekly sales across Walmart stores, and can a simple model help explain sales performance?**

## Dataset

The analysis uses the **Walmart Recruiting - Store Sales Forecasting** dataset.

The main files used are:

- `train.csv` — weekly sales by store and department
- `features.csv` — economic and environmental variables
- `stores.csv` — store type and size

The dataset contains information on 45 Walmart stores, including:

- Weekly sales
- Store type
- Store size
- Holiday periods
- Temperature
- Fuel price
- Consumer Price Index (CPI)
- Unemployment

The raw department-level data is aggregated into a **store-week level dataset** for the main analysis.

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

Type A stores generated the highest average weekly sales at approximately **$1.38 million**, followed by Type B at about **$823,000** and Type C at about **$473,000**.

### Store size

Store size had a strong positive correlation with weekly sales of approximately **0.81**. This suggests that larger stores generally generated higher weekly sales in this dataset.

### Holiday effect

Average weekly sales were approximately:

- **$1.12 million during holiday weeks**
- **$1.04 million during non-holiday weeks**

Holiday weeks therefore generated around **7.84% higher average weekly sales**.

### Seasonality

December recorded the highest average weekly sales at approximately **$1.28 million**, followed by November at approximately **$1.15 million**.

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

- **R²: 0.662**
- **Mean Absolute Error: approximately $247,929**

An R² of 0.662 means that the variables included in the model explain about **66.2% of the variation in weekly store sales**.

The model is intentionally simple and is used mainly to demonstrate how business variables can be combined in a basic predictive analysis.

## Business Recommendations

Based on the analysis:

- Store format and store size should be considered when setting store-level sales expectations.
- Inventory and staffing plans should account for stronger demand during holiday periods and the final months of the year.
- Larger stores may require different performance benchmarks from smaller stores.
- External economic indicators can be used as supporting information, but they should not be relied on alone for store-level sales planning.
- A more advanced forecasting model could later include department-level behavior, promotional markdowns, local competition, and additional historical data.

## Repository Structure

```text
walmart-retail-sales-analytics/
│
├── README.md
├── requirements.txt
│
├── notebooks/
│   └── walmart_sales_analysis_final.ipynb
│
├── sql/
│   └── analysis_queries.sql
│
└── outputs/
    └── cleaned_store_week_sales.csv
```

## How to Run the Project

1. Clone or download this repository.
2. Download the Walmart dataset from Kaggle.
3. Place `train.csv`, `features.csv`, and `stores.csv` in the same working directory expected by the notebook, or update the file paths in the loading cell.
4. Install the required Python packages:

```bash
pip install -r requirements.txt
```

5. Open Jupyter Notebook or JupyterLab.
6. Open:

```text
notebooks/walmart_sales_analysis_final.ipynb
```

7. Run the cells from top to bottom.

## Requirements

The main Python libraries used are:

```text
pandas
numpy
matplotlib
scikit-learn
jupyter
```

## Data Source

Dataset: **Walmart Recruiting - Store Sales Forecasting**, available on Kaggle.

The raw dataset is not included in this repository.

## Limitations

- The stores are anonymized.
- The dataset covers a historical period and may not represent current Walmart operations.
- Correlation does not imply causation.
- The regression model is deliberately simple.
- Variables such as local competition, customer demographics, online sales, and detailed promotional effects are not included in the final model.

## Conclusion

This project demonstrates how retail data can be transformed into business insights using a straightforward analytics workflow.

The analysis shows that **store size, store type, holiday periods, and seasonality** are important factors associated with Walmart weekly sales, while a simple regression model can explain a substantial share of the observed variation in sales.
