WITH raw_tags AS (
    SELECT * FROM MOVIELENS.RAW.raw_tags
)
SELECT
   userid AS user_id,
    movieId AS movie_id,
    tag,
    TO_TIMESTAMP_LTZ (timestamp) AS tag_timestamp
FROM raw_tags