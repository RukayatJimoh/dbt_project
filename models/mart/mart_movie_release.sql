{{config (
    materialized = 'table'
)}}

WITH fact_rating AS 
(
    SELECT * FROM {{ref("fact_rating")}}
), 
seed_dates AS (
    SELECT * FROM {{ref('seed_movies_release_date')}}
)


SELECT f.*,
    CASE 
    WHEN s.release_date IS NULL THEN 'unknown'
    ELSE 'known'
    END AS release_info_available
FROM fact_rating f
LEFT JOIN  seed_dates s
ON f.movie_id = s.movie_id