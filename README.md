# Supplier Performance Analytics Dashboard

## 📊 Project Overview
Analyzed 500 purchase orders across 20 suppliers to identify procurement risks, delivery performance issues, and cost optimization opportunities using Python, SQL, and Tableau.

## 🔍 Key Findings

**Critical Risk Identified:**
- **Gaines-Olsen**: Highest supplier by total spend ($5.7M+) but only 20% on-time delivery rate
- Represents major supply chain vulnerability requiring immediate attention

**Category Analysis:**
- **Electronics**: 65.42% late shipment rate (70 out of 107 orders delayed)
- Suggests category-wide supply chain constraints vs. isolated supplier issues

**Geographic Insights:**
- Lead times nearly identical between Germany (55.69 days) and India (55.90 days)
- Variability analysis needed before making sourcing decisions

## 💡 Recommendations

1. **Dual-source high-risk suppliers** to reduce dependency on Gaines-Olsen
2. **Extend lead times for Electronics** by 15-20 days
3. **Build safety stock** for high-velocity Electronics SKUs
4. **Negotiate performance improvements** or phase out suppliers below 50% OTD

## 🛠️ Tools & Technologies

- **Python**: pandas, faker (data generation & analysis)
- **SQL**: SQLite (querying & aggregation)
- **Tableau**: Interactive dashboard creation
- **Excel**: Supplier scorecard modeling

## 📁 Project Files

- `generate_supplier_data.py` - Synthetic dataset generator
- `supplier_data.csv` - 500 purchase order records
- `otd_by_supplier.sql` - On-time delivery analysis
- `spend_by_supplier.sql` - Total spend ranking
- `delayed_shipments_by_category.sql` - Category performance analysis
- `lead_time_by_country.sql` - Geographic lead time comparison

## 📈 Interactive Dashboard

[View Live Tableau Dashboard](https://public.tableau.com/app/profile/manuel.ramirez3002/viz/SupplierPerformanceDashboard2/SupplierPerformanceAnalyticsDashboard)

## 🎯 Skills Demonstrated

- Data generation and synthetic dataset creation
- SQL querying (aggregations, CTEs, CASE WHEN logic)
- Data visualization and dashboard design
- Business intelligence and procurement analytics
- Stakeholder communication and recommendations

---

**Built as part of a supply chain analytics portfolio to demonstrate end-to-end data analysis capabilities.**
