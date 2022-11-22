with source as (

    --select * from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.REGION
    select R_REGIONKEY
    , R_NAME
    , R_COMMENT
    ,left(R_COMMENT,10) as COMMENT2
    ,COMMENT3
    ,COMMENT4
    ,COMMENT5    
    ,COMMENT6        
     from {{ ref('cjo_file') }}

)
select * from source
--add comments