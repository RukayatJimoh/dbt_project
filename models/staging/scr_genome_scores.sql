WITH raw_genome_scores AS (
    SELECT * FROM MOVIELENS.RAW.raw_genome_scores 
)
SELECT
    movieId AS movie_id,
    tagid AS tag_id,
    relevance
FROM raw_genome_scores 