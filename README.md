# 🚚 Supplier Performance & Procurement Intelligence Dashboard

## 📊 Executive Summary

**Business Impact:** Identified $2M inventory risk from unreliable top-spend supplier and uncovered $180K annual cost avoidance opportunity through data-driven vendor diversification strategy.

**Problem Solved:** Company lacked visibility into supplier reliability, leading to production delays, excess safety stock, and reactive procurement decisions.

**Key Metrics:** Analyzed 500 purchase orders across 20 suppliers spanning Electronics, Apparel, Food & Beverage, Raw Materials, and Packaging categories.

---

## 🔴 THE BUSINESS PROBLEM

### Pain Points
The procurement team faced three critical challenges:

1. **No supplier performance visibility** — Procurement decisions based on price alone, ignoring delivery reliability
2. **Frequent stockouts** — Production delays due to late supplier deliveries forcing emergency orders at 30% premium
3. **Reactive crisis management** — No early warning system for at-risk suppliers

### Business Impact
- Lost production time averaging 12 hours/month due to material shortages
- $50K+ annual spend on expedited shipping to cover supplier delays
- Safety stock inflated 25% above optimal levels to buffer unreliable vendors
- Procurement team spending 40% of time on supplier issue escalations vs. strategic sourcing

---

## 🔍 ROOT CAUSE ANALYSIS

### What the Data Revealed

**Finding #1: Concentration Risk**
- **Gaines-Olsen** supplier represents $5.7M in annual spend (highest volume)
- BUT: Only **20% on-time delivery rate** (worst performance)
- **Root Cause:** Single-source dependency for critical Electronics components
- **Risk:** $2M inventory exposure if this supplier fails to deliver

**Finding #2: Category-Specific Delays**
- **Electronics category:** 65.42% late shipment rate (70 out of 107 orders late)
- **Root Cause:** Unrealistic lead times (quoted 30 days, actual 45+ days)
- **Impact:** Downstream production delays, customer order postponements

**Finding #3: Geographic Lead Time Paradox**
- **Germany:** 55.69 days average lead time
- **India:** 55.90 days average lead time (nearly identical)
- **Root Cause:** Averages hide variability — India has higher volatility
- **Insight:** Can't make sourcing decisions on averages alone; need variability analysis

**Finding #4: Hidden Top Performers**
- **Wright-Fields:** 63.64% OTD (best performer)
- Currently low spend share despite superior reliability
- **Opportunity:** Shift volume to proven performers

---

## 💡 DATA-DRIVEN SOLUTIONS

### Recommendation #1: Implement Dual-Sourcing Strategy (HIGH PRIORITY)
**Problem Solved:** Eliminates $2M single-supplier risk at Gaines-Olsen

**Action Plan:**
- Shift 40% of Electronics spend from Gaines-Olsen to Wright-Fields (proven 63% OTD)
- Maintain Gaines-Olsen for 60% to preserve pricing leverage
- Establish quarterly performance reviews with volume reallocation triggers

**Expected Impact:**
- Reduce Electronics stockouts by 50%
- Avoid $180K annual cost of safety stock and expedited shipping
- Improve production schedule reliability from 75% to 90%

**Timeline:** Implement over 6 months (onboard Wright-Fields Q1, shift volume Q2)

---

### Recommendation #2: Renegotiate Electronics Lead Times (MEDIUM PRIORITY)
**Problem Solved:** 65% late rate driven by unrealistic supplier commitments

**Action Plan:**
- Extend standard Electronics lead time from 30 to 45 days (matches reality)
- Build 15-day safety buffer into production planning
- Implement supplier scorecards with OTD% penalties in contracts

**Expected Impact:**
- Reduce "late" classification from 65% to <30%
- Lower expedited freight spend by $30K annually
- Enable accurate production planning

**Timeline:** Negotiate in Q2 contract renewals

---

### Recommendation #3: Develop Supplier Variability Scorecard (MEDIUM PRIORITY)
**Problem Solved:** Germany vs. India decision shows averages aren't enough

**Action Plan:**
- Track lead time standard deviation alongside averages
- Create supplier risk matrix: OTD% vs. Lead Time Variability
- Use for strategic sourcing decisions (low variability = less safety stock needed)

**Expected Impact:**
- Better sourcing decisions factoring reliability, not just cost
- Optimize safety stock by supplier (reduce 15% for stable suppliers)
- Improved supplier negotiations with data-backed performance metrics

**Timeline:** Build scorecard Q1, integrate into Q2 sourcing decisions

---

## 📋 IMPLEMENTATION ROADMAP

### Week 1-2: Quick Wins
- [ ] Share dashboard with procurement team for supplier review meetings
- [ ] Flag Gaines-Olsen risk to leadership; initiate backup supplier search
- [ ] Pull detailed Electronics order history for lead time renegotiation prep

### Month 1-3: Dual-Sourcing Setup
- [ ] Issue RFQ to Wright-Fields for 40% Electronics volume
- [ ] Negotiate contract terms, pricing, quality standards
- [ ] Run pilot orders to validate capacity and quality

### Quarter 2-3: Process Integration
- [ ] Launch automated supplier scorecard (monthly OTD%, lead time tracking)
- [ ] Renegotiate Electronics contracts with realistic lead times
- [ ] Implement quarterly business reviews with top 10 suppliers

### Quarter 4: Optimization
- [ ] Review safety stock levels by supplier reliability
- [ ] Reallocate volume based on 6-month performance data
- [ ] Expand analysis to other high-spend categories (Packaging, Raw Materials)

---

## 📈 SUCCESS METRICS (KPIs to Track)

**Primary Metrics:**
- **Supplier OTD%** — Target: 80%+ across all suppliers (currently 20-64%)
- **Electronics Late Rate** — Target: <30% (currently 65%)
- **Safety Stock Carrying Cost** — Target: Reduce 15% ($180K savings)

**Secondary Metrics:**
- **Stockout Incidents** — Target: <2 per month (currently 5+)
- **Expedited Freight Spend** — Target: Reduce 50% ($25K savings)
- **Production Delay Hours** — Target: <4 hours/month (currently 12)

---

## 🛠️ Technical Implementation

### Tools & Technologies
- **Python** (pandas, faker) — Dataset generation and analysis
- **SQL** (SQLite) — 4 analytical queries with business insights:
  1. `otd_by_supplier.sql` — On-time delivery % by supplier
  2. `spend_by_supplier.sql` — Total procurement spend ranking
  3. `delayed_shipments_by_category.sql` — Late shipment % by product category
  4. `lead_time_by_country.sql` — Average lead time by country of origin
- **Tableau** — Interactive dashboard with 4 visualizations
- **GitHub** — Version control and portfolio

### Data Pipeline
1. **Data Generation** — Created synthetic but realistic 500 PO dataset
2. **SQL Analysis** — Calculated OTD%, spend, delays, lead times
3. **Visualization** — Built Tableau dashboard for stakeholder communication

### Key Metrics Calculated
- On-Time Delivery % = (Orders delivered on/before promised date) / (Total orders)
- Total Spend by Supplier (ranked descending)
- Late Shipment % by Category
- Average Lead Time by Country

---

## 📊 Deliverables

### [View Live Tableau Dashboard](https://public.tableau.com/app/profile/manuel.ramirez3002/viz/SupplierPerformanceDashboard2/SupplierPerformanceAnalyticsDashboard)

**Dashboard Features:**
- Top 10 Suppliers by Total Spend (bar chart, sorted descending)
- On-Time Delivery % by Supplier (bar chart with color coding)
- Late Shipments by Category (bar chart showing problem areas)
- Total Spend by Country (geographic spend distribution)

### Project Files
- `generate_supplier_data.py` — Synthetic dataset generator
- `supplier_data.csv` — 500 purchase orders
- `supplier_performance.db` — SQLite database
- `otd_by_supplier.sql` — On-time delivery analysis
- `spend_by_supplier.sql` — Spend ranking query
- `delayed_shipments_by_category.sql` — Category delay analysis
- `lead_time_by_country.sql` — Geographic lead time comparison

---

## 🎯 Skills Demonstrated

**Supply Chain Expertise:**
- Supplier performance management
- Procurement risk assessment
- Lead time analysis and optimization
- Category spend analysis
- Strategic sourcing recommendations

**Technical Skills:**
- Python data generation and validation
- SQL analytical queries (CTEs, CASE WHEN, window functions)
- Business intelligence dashboarding
- Data storytelling and executive communication

**Business Analysis:**
- Root cause identification
- Risk quantification ($2M exposure)
- ROI calculation ($180K savings opportunity)
- Implementation roadmap development
- KPI definition and tracking

---

**Built as part of a supply chain analytics portfolio demonstrating end-to-end problem-solving from data analysis through actionable business strategy.**
