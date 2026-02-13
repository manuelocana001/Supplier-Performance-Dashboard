
-- touch delayed_shipments_by_category.sql
-- code delayed_shipments_by_category.sql

-- Late Shipment Analysis by Product Category
-- Identifies which product categories experience the most delivery delays
-- Calculates late shipment count and percentage by category
-- Helps identify if delays are supplier-specific or category-wide (e.g., global supply issues)

-- KEY INSIGHT: Electronics category shows the worst performance with 65.42% late 
-- rate (70 out of 107 orders delayed). This is significantly higher than other 
-- categories, suggesting category-wide supply chain constraints rather than 
-- isolated supplier issues. Potential causes: global chip shortages, complex 
-- multi-tier supply chains, or longer international shipping routes.


SELECT 
    Category,
    COUNT(*) as Total_Orders,
    SUM(CASE WHEN Actual_Delivery > Promised_Delivery THEN 1 ELSE 0 END) as Late_Orders,
    ROUND(100.0 * SUM(CASE WHEN Actual_Delivery > Promised_Delivery THEN 1 ELSE 0 END) / COUNT(*), 2) as Late_Percentage
FROM supplier_data
GROUP BY Category
ORDER BY Late_Percentage DESC;


-- Why might Electronics have such high delays compared to other categories?
-- Possible reasons:

-- Global chip shortages (we've all lived through this recently)
-- Complex supply chains (electronics have more components = more failure points)
-- Longer shipping distances (often sourced from Asia)
-- Port congestion for high-value goods

-- In a real job, this insight would lead you to:

-- Cross-reference Electronics delays with country of origin (are China electronics worse than Mexico electronics?)
-- Check if specific suppliers are dragging down the whole category
-- Recommend longer lead times for Electronics POs
-- Build safety stock specifically for Electronics SKUs

-- RECOMMENDATION: 
-- 1. Extend standard lead times for Electronics POs by 15-20 days
-- 2. Build safety stock specifically for high-velocity Electronics SKUs
-- 3. Investigate country-of-origin impact (cross-reference with geography analysis)
-- 4. Consider diversifying Electronics suppliers across multiple regions
