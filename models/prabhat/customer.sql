with customers as(
    select * from {{ source('snowflake_sample_data', 'customer') }}
),

final as(
    select * from customers limit 2000
)

select * from final limit 200