SELECT
    "month",
    cost_rub as cost_rub,
    revenue_rub as revenue_rub,
    revenue_rub - cost_rub as profit_rub
FROM {{ ref('total_costs')}}
JOIN {{ ref('trips_monthly')}}
    USING ("month")
ORDER BY 1
