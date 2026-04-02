WITH source AS (   
   SELECT * FROM {{ source('raw', 'source_nyc_open_restaurant_apps') }}
), -- Easier to refer to the dbt reference to a long name table this way
cleaned AS (
   SELECT * FROM source
)
SELECT * FROM cleaned