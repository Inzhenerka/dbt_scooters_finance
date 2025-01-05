FROM {{ ref('trips_monthly')}} AS t
LEFT JOIN {{ source('finance_data', 'rates')}} AS c
    USING ("month")
