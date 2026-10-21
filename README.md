# Pizza_db
# 🍕 Pizza Sales Analysis | PostgreSQL & Power BI

## 📌 Project Overview

This project analyzes pizza sales data using **PostgreSQL and Microsoft Power BI** to evaluate business performance, identify sales trends, and understand product-level performance.

SQL was used to query the dataset and calculate key business metrics, while Power BI was used to create interactive dashboards for exploring revenue, order trends, pizza categories, pizza sizes, and best- and worst-performing products.

The project covers the complete analytical workflow, from querying sales data to presenting business insights through interactive visualizations.

## 🎯 Business Objectives

- Measure overall revenue and sales performance.
- Analyze daily and monthly order trends.
- Identify the best-selling and lowest-performing pizzas.
- Compare revenue contributions across pizza categories and sizes.
- Evaluate product performance by revenue, orders, and quantity sold.
- Present key business metrics in an interactive Power BI dashboard.

## 🛠️ Tools & Technologies

- **PostgreSQL** — SQL querying, aggregations, filtering, date analysis, and KPI calculations.
- **Microsoft Power BI** — Interactive dashboards and data visualization.
- **SQL** — Business analysis, conditional calculations, sorting, grouping, and subqueries.

## 📊 Key Performance Indicators (KPIs)

The overall dashboard reports the following metrics for January–December 2015:

| KPI | Result |
|---|---:|
| Total Revenue | 817.86K |
| Total Orders | 21,350 |
| Total Pizzas Sold | 49,574 |
| Average Order Value | 38.31 |
| Average Pizzas per Order | 2.32 |


## 📈 Power BI Dashboards

### 1. Overall Sales Dashboard

This dashboard provides a high-level overview of sales performance, including KPIs, daily and monthly order trends, category-wise revenue contribution, pizza-size distribution, and quantity sold by category.

![Pizza Sales Overview Dashboard](pizza_dashboard%201.PNG)

**Key features:**
- KPI cards for revenue, orders, pizzas sold, average order value, and average pizzas per order.
- Daily order trends by day of the week.
- Monthly order trends across the year.
- Revenue contribution by pizza category.
- Sales distribution by pizza size.
- Pizza quantity comparison across categories.
- Date range and pizza category filters.

### 2. Best & Worst Sellers Dashboard

This dashboard focuses on product-level performance and allows users to filter results by pizza category.

![Pizza Best and Worst Sellers Dashboard](images/pizza_dashboard2.PNG)

**Key features:**
- Top 5 pizzas by revenue.
- Top 5 pizzas by number of orders.
- Top 5 pizzas by quantity sold.
- Bottom 5 pizzas by revenue.
- Bottom 5 pizzas by number of orders.
- Bottom 5 pizzas by quantity sold.
- Interactive category and date filters.

## 🔍 SQL Analysis

The PostgreSQL analysis covers the following business questions:

### KPI Analysis
- What is the total revenue generated?
- How many unique orders were placed?
- How many pizzas were sold?
- What is the average order value?
- What is the average number of pizzas per order?

### Time-Based Analysis
- Which days of the week have the highest order volume?
- How does order volume change from month to month?
- Which periods have relatively high or low sales?

### Category & Size Analysis
- Which pizza category contributes the most revenue?
- Which pizza size accounts for the largest revenue share?
- What percentage of total revenue comes from each category and size?

### Product Performance Analysis
- Which five pizzas generate the highest revenue?
- Which pizzas receive the most orders?
- Which pizzas sell the highest quantities?
- Which pizzas perform lowest on these metrics?

## 💡 Key Business Insights

Based on the displayed dashboards:

- **Classic is the leading revenue category**, contributing approximately 26.91% of total revenue.
- **Large pizzas contribute the highest revenue share** among pizza sizes, at approximately 45.89%.
- **July has the highest monthly order volume** in the displayed monthly trend.
- In the Chicken category view, **The Thai Chicken Pizza and The Barbecue Chicken Pizza** appear among the leading products by revenue.
- The category filter allows users to investigate product performance specifically for Chicken and compare the results with the overall business.

These findings can support sales planning, product-level performance reviews, inventory decisions, and promotional strategies.


## 📚 Skills Demonstrated

- PostgreSQL and SQL querying
- Aggregations and grouping
- Distinct order counting
- Date and time analysis
- Subqueries and percentage calculations
- Business KPI development
- Power BI dashboard design
- Interactive filtering and data visualization
- Translating sales data into business insights

## 👤 Author

**Nitin Agarwal**

Data Analyst | SQL | Power BI | Python

[Connect with me on LinkedIn](https://www.linkedin.com/in/nitinagarwal25/)
