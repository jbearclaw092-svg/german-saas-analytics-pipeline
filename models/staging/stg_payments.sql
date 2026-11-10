with raw_payments as (
    select * from {{ source('jaffle_shop', 'payments') }}
)

select
    id as payment_id,
    order_id,
    payment_method,
    (amount / 100.0) as amount_paid
from raw_payments