{{ config(post_hook="truncate table {{source('DEVELOPER_DB','US_ACCIDENT_DATA_RAW_STAGE')}}",
materialized='table') }}
select to_number(to_char(START_TIME, 'yyyymmdd')) as date_id,* from {{source('DEVELOPER_DB','US_ACCIDENT_DATA_RAW_STAGE')}}
--abc1 as (delete from "DEVELOPER_DB"."ANJALI_SCHEMA"."US_ACCIDENT_DATA_RAW_STAGE" where _modified = '2022-11-30 04:22:08.000 +0000')
--after_commit("DELETE FROM {{ source('DEVELOPER_DB', 'US_ACCIDENT_DATA_RAW_STAGE')}} where _modified<'2022-11-30 04:22:08.000 +0000'"),

