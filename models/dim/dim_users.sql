WITH ratings AS (
  SELECT DISTINCT user_id FROM {{ref("scr_ratings")}}
),

tags AS (
  SELECT DISTINCT user_id FROM {{ref("scr_tags")}}
)

SELECT DISTINCT user_id
FROM (
  SELECT * FROM ratings
  UNION
  SELECT * FROM tags
)