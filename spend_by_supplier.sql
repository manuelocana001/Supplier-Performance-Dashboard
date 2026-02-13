-- Total Spend Analysis by Supplier
-- Calculates total spend (sum of all PO costs) per supplier
-- Shows average order value and number of orders
-- Ordered from highest to lowest total spend

-- KEY INSIGHT: Gaines-Olsen is the #1 supplier by total spend ($5.7M+), 
-- representing a significant portion of procurement budget. However, 
-- cross-referencing with OTD analysis reveals they have only 20% on-time 
-- delivery performance. This concentration of spend with a low-performing 
-- supplier creates major supply chain risk.
--
-- RECOMMENDATION: Immediate supplier performance review with Gaines-Olsen 
-- and exploration of dual-sourcing strategy to reduce dependency.

SELECT 
    Supplier,
    COUNT(*) as Total_Orders,
    ROUND(SUM(Total_Cost), 2) as Total_Spend,
    ROUND(AVG(Total_Cost), 2) as Avg_Order_Value
FROM supplier_data
GROUP BY Supplier
ORDER BY Total_Spend DESC;
