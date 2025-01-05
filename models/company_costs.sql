SELECT
    "month",
    staff_price AS staff_cost,
    office_price AS office_cost,
    it_price AS it_cost
FROM {{ source('finance_data', 'rates')}}
