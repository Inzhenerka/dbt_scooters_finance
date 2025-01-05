SELECT
    "month",
    cost_rub,
    revenue_rub,
    revenue_rub - cost_rub as profit_rub
FROM {{ ref('total_costs')}}
JOIN {{ ref('trips_monthly')}}
    USING ("month")
ORDER BY 1
