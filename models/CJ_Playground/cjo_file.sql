with source as (

    --select * from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.REGION
    select * from {{ source('tpch_CLJ', 'region') }}

)
select * from source