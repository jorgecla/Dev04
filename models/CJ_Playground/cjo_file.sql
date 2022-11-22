-- select * from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.REGION
with source as (select * from {{ source("tpch_ds", "region") }})
select
    r_regionkey,
    r_name,
    r_comment,
    r_comment as comment3,
    r_comment as comment10

-- add comments
from source
