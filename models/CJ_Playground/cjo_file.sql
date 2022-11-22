with source as (

    --select * from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.REGION
    select *
    
     from {{ source('tpch_CLJ', 'region') }}

)
select 
R_REGIONKEY
, R_NAME
, R_COMMENT
, R_COMMENT as COMMENT3
, R_COMMENT as COMMENT4
, R_COMMENT as COMMENT5
, R_COMMENT as COMMENT6
, R_COMMENT as COMMENT7

 from source
--add comments