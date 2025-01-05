SELECT
    "month",
    sum(cost_rub)::int as cost_rub
FROM {{ ref('all_costs')}}
GROUP BY ALL
