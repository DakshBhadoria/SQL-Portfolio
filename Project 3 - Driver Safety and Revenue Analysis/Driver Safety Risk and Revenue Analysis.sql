WITH Driver_Safety_Performance AS (
    SELECT 
        d.first_name,
        d.last_name,
        SUM(dm.trips_completed) AS Total_Trips,
        SUM(dm.total_revenue) AS Total_Revenue,
        COUNT(si.incident_id) AS Total_Incidents,
        AVG(dm.total_revenue) AS Average_Revenue
    FROM drivers d
    JOIN driver_monthly_metrics dm ON d.driver_id = dm.driver_id
    LEFT JOIN safety_incidents si ON d.driver_id = si.driver_id
    GROUP BY d.first_name, d.last_name
)
SELECT *,
    ROW_NUMBER() OVER (ORDER BY Total_Incidents DESC, Total_Revenue DESC) AS Risk_Rank,
    (Total_Incidents * 100.0 / Total_Trips) AS Incident_Percentage,
    LAG(Total_Revenue) OVER (ORDER BY Total_Incidents DESC, Total_Revenue DESC) AS Previous_Revenue
FROM Driver_Safety_Performance
ORDER BY Risk_Rank;
