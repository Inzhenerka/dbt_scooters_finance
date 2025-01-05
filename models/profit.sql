WITH costs_summary_cte AS (
    SELECT
        "month",
        sum(cost_rub) as cost_rub
    FROM {{ ref('costs_breakdown')}}
    GROUP BY ALL
)
SELECT
    "month",
    cost_rub::int as cost_rub,
    revenue_rub::int as revenue_rub,
    (revenue_rub - cost_rub)::int as profit_rub,
    (profit_rub / users_count)::int as profit_per_user_rub,
    (profit_rub / trips_count)::int as profit_per_trip_rub
FROM costs_summary_cte
JOIN {{ ref('trips_monthly')}}
    USING ("month")
ORDER BY 1
