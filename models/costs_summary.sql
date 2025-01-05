SELECT
    "month",
    sum(cost_rub) as cost_rub
FROM {{ ref('costs_breakdown')}}
GROUP BY ALL
