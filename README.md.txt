# Olist Brazilian E-Commerce Sales Analysis

## 📊 Project Overview

This project analyzes Brazilian e-commerce sales data from the Olist marketplace using **SQL Server and Power BI**.

The objective is to understand sales performance, customer geography, product performance, payment behavior, order fulfillment, and sales trends through an interactive business intelligence dashboard.

---

## 🎯 Business Objective

The analysis answers key business questions:

- What is the total sales revenue?
- How many orders were placed?
- How do sales change over time?
- Which product categories generate the most revenue?
- Which Brazilian states generate the most sales?
- Which payment methods are most commonly used?
- What is the distribution of order statuses?
- Which products generate the highest sales?

---

## 🗂️ Dataset

The project uses the **Olist Brazilian E-Commerce dataset**.

The dataset contains information about:

- Customers
- Orders
- Order items
- Products
- Product categories
- Payments
- Customer locations

### Main Tables

| Table | Description |
|---|---|
| `olist_orders_dataset` | Order information and order status |
| `olist_order_items_dataset` | Products, quantities and prices associated with orders |
| `olist_products_dataset` | Product and category information |
| `olist_customers_dataset` | Customer information and geographic location |
| `olist_order_payments_dataset` | Payment methods and payment values |

---

## 🛠️ Tools & Technologies

- **SQL Server** — Data querying, joins and analysis
- **Power BI** — Data modeling, DAX and dashboard development
- **CSV/Excel** — Source data
- **GitHub** — Project documentation and portfolio

---

## 🔍 SQL Analysis

SQL was used to perform business analysis by joining multiple tables and calculating key metrics.

### Analysis performed

1. Total Sales
2. Total Orders
3. Average Order Value
4. Monthly Sales Trend
5. Sales by Product Category
6. Sales by Customer State
7. Payment Method Analysis
8. Order Status Analysis
9. Top 10 Products by Sales

---

## 📈 Power BI Dashboard

The Power BI dashboard provides an interactive view of the e-commerce business.

### Dashboard Features

- KPI cards
- Monthly Sales Trend
- Sales by Product Category
- Sales by Customer State
- Sales by Payment Method
- Orders by Status
- Top 10 Products by Sales
- Order Year slicer
- Product Category slicer

---

## 📌 Key KPIs

| KPI | Result |
|---|---:|
| Total Sales | R$13.59M |
| Total Orders | 99,441 |
| Delivered Orders | 96,478 |
| Average Order Value | R$136.68 |

---

## 💡 Key Business Insights

### 1. Product Category Performance

The **Health & Beauty (`beleza_saude`)** category generated the highest sales at approximately **R$1.26M**, followed by Watches & Gifts and Bed, Bath & Table.

### 2. Geographic Sales Concentration

**São Paulo (SP)** was the strongest market, generating approximately **R$5.20M** in sales, significantly ahead of other states.

### 3. Payment Method Preference

**Credit cards accounted for approximately 78% of total payment value**, making them the dominant payment method.

### 4. Order Fulfillment

Approximately **96K of 99K orders were delivered**, indicating strong overall order fulfillment performance.

### 5. Top Product Performance

A small group of individual products generated substantially higher revenue than many other products, highlighting the importance of high-performing products.

### 6. Sales Trend

Monthly sales generally increased through 2017 and remained strong during much of 2018. The sharp decline at the end of the timeline should be interpreted cautiously because the final period contains incomplete data.

---

## 💼 Business Recommendations

Based on the analysis:

- Prioritize high-performing product categories for inventory and promotions.
- Maintain a strong credit-card payment experience because of its dominant usage.
- Focus marketing and customer acquisition strategies on high-performing states such as São Paulo.
- Investigate canceled and unavailable orders to identify operational improvement opportunities.
- Monitor top-performing products closely to reduce stock-out risks.
- Use monthly sales trends to support demand planning and inventory decisions.

---

## 📁 Project Structure

```text
Olist-Ecommerce-Sales-Analysis/
│
├── Data/
│   └── Olist CSV files
│
├── SQL/
│   └── Olist_Analysis.sql
│
├── PowerBI/
│   └── Olist_Sales_Dashboard.pbix
│
├── Screenshots/
│   └── dashboard.png
│
└── README.md