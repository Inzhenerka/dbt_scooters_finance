UNPIVOT {{ ref("scooters_costs") }}
ON deprecation_cost, electricity_cost, maintenance_cost
INTO
    NAME title
    VALUE cost_rub
UNION ALL
UNPIVOT {{ ref("company_costs") }}
ON staff_cost, office_cost, it_cost
INTO
    NAME title
    VALUE cost_rub
ORDER BY 1, 2
