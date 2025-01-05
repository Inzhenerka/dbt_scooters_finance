SELECT
    date_trunc('month', started_at at time zone 'Europe/Moscow')::date  AS "month",
    count(*) AS trips_count,
    count(DISTINCT user_id) AS users_count,
    sum(epoch(finished_at - started_at)) / 60 AS duration_m,
    sum(distance) / 1000 AS distance_km,
    sum(price / 100)::int AS revenue_rub
FROM
    {{ source('s3', 'trips')}} AS t
GROUP BY ALL
