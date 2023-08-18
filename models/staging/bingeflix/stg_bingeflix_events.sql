{{
    config(
        materialized='incremental',
        unique_key='event_id'
    )
}}


WITH source AS (

    SELECT

        session_id,
        created_at,
        user_id,
        event_name,
        event_id,
        {{ dbt_utils.generate_surrogate_key(['event_id']) }} AS surrogate_key

    FROM {{ source('bingeflix', 'events') }}


    {% if is_incremental() %}

        WHERE created_at > (SELECT DATEADD('day', -5, MAX(created_at)) FROM {{ this }})

    {% endif %}

),

renamed AS (

    SELECT
        session_id,
        created_at,
        user_id,
        event_name,
        event_id

    FROM source

)

SELECT * FROM renamed
