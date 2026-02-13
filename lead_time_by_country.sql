
-- Average Lead Time Analysis by Country of Origin
-- Calculates average days between PO date and actual delivery by country
-- Identifies geographic patterns in shipping performance
-- Helps inform sourcing strategy and lead time planning

-- KEY INSIGHT: Reveals which countries consistently deliver faster or slower, 
-- enabling data-driven decisions on geographic sourcing mix and lead time 
-- expectations by region.
--
-- RECOMMENDATION: Use country-specific lead time benchmarks when setting 
-- promised delivery dates. Consider nearshoring for time-sensitive categories.

SELECT
    COUNTRY,
    COUNT(*) as Total_Orders,
    ROUND(AVG(JULIANDAY(Actual_Delivery) - JULIANDAY(PO_Date)), 2) as Avg_Lead_Time_Days,
    ROUND(MIN(JULIANDAY(Actual_Delivery) - JULIANDAY(PO_Date)), 2) as Min_Lead_Time_Days,
    ROUND(MAX(JULIANDAY(Actual_Delivery) - JULIANDAY(PO_Date)), 2) as Max_Lead_Time_Days
FROM supplier_data
GROUP BY COUNTRY
ORDER BY Avg_Lead_Time_Days ASC;

-- KEY INSIGHT: Germany (55.69 days avg) and India (55.90 days avg) show nearly 
-- identical lead times (0.21 day difference). However, average alone doesn't tell 
-- the full story — need to analyze variability (standard deviation) and consistency 
-- before making sourcing recommendations. A stable 56-day supplier may be preferable 
-- to an unpredictable 55-day average.