 WITH raw_genome_tags AS (
    SELECT * FROM MOVIELENS.RAW.raw_genome_tags 
)
SELECT
    tagid AS tag_id,
    tag
FROM raw_genome_tags 