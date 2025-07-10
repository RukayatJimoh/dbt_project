WITH raw_links AS (
    SELECT * FROM MOVIELENS.RAW.raw_links 
)
SELECT
    movieId AS movie_id,
    imdbid AS imdb_id,
    tmdbid AS tmdb_id
FROM raw_links 