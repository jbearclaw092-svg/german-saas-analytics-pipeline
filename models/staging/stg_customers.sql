with raw_customers as (
    select * from {{ source('jaffle_shop', 'customers') }}
)

select
    id as customer_id,
    first_name,
    last_name
from raw_customers