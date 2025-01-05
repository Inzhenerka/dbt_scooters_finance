SELECT
    "month",
    staff_cost,
    office_cost,
    it_cost
FROM {{ source('finance_data', 'costs')}}
