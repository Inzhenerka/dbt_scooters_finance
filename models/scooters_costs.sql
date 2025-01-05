SELECT
    "month",
    distance_km * scooter_price / scooter_lifetime_km AS deprecation_cost,
    distance_km * electricity_per_km AS electricity_cost,
    distance_km * maintenance_per_km AS maintenance_cost
FROM {{ ref('trips_cost')}} AS t
