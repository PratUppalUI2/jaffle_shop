
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

/*with source_data as (

	    select 1 as id
	    union all
	    select 2 as id

)*/

select *,
    101 as source_id,
    '101_9876' as batch_id
from leap_sample_table
/*
select id,
     data,
     case
        when source_id IS NULL then 101
        else source_id
    end as source_id,
    case
        when batch_id IS NULL then concat(101,'_',current_timestamp)
        else batch_id
    end as batch_id
from leap_sample_table
*/
/*select *
from source_data
*/

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
