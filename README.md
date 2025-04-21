# Power BI Sales Analytics Dashboard – AtliQ Hardware

This project involves the end-to-end development of an interactive **Sales Analytics Dashboard** for **AtliQ Hardware**, a computer hardware supplier operating across India. The solution addresses business challenges around inconsistent sales reporting and the need for actionable insights.

## 🚩 Problem Statement

The Sales Director at AtliQ Hardware lacked centralized, real-time insights into sales performance due to fragmented Excel reports and verbal updates from regional managers. This project solves that by delivering a clean, real-time Power BI dashboard connected to SQL Server.

## 🎯 Project Objectives

- Clean and normalize sales data using SQL and Power Query.
- Design a **star schema data model** for efficient reporting.
- Create interactive Power BI dashboards with:
  - Revenue & Sales KPIs
  - Market and Customer Insights
  - Trend Analysis over Time
  - Profit Margin Analysis
- Optimize dashboard for Power BI Mobile.
- Deploy and share via Power BI Service with bookmarks and filters.

## 🛠️ Tools & Technologies

- **Power BI Desktop & Power BI Service**
- **SQL Server & SSMS**
- **Power Query & DAX**
- **Jupyter Notebook (for SQL exploration)**
- **HTML & CSS (for mobile formatting)**

## 🗃️ Data Sources

- Sales database from SQL dump (`DB_dump.sql`) imported into SSMS
- Tables used: `customers`, `transactions`, `products`, `markets`, `sales_date`

## 📊 Key Features

- Dynamic visualizations for revenue, quantity, customer, and market trends
- Profit margin analysis with DAX measures
- Zone-wise and channel-wise breakdown (brick-and-mortar vs. e-commerce)
- Filters for Year, Month, Product, and Region
- Dashboard published to Power BI Service with mobile optimization

## 📈 Outcome

This dashboard empowers stakeholders to make **data-driven decisions**, quickly identify underperforming regions or customers, and improve sales strategy. It also demonstrates how to apply **ETL, data modeling, and DAX** effectively in Power BI.
