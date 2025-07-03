with source as (
    select * from {{ source('my_dbt_db', 'raw_orders') }}
),
renamed as (
    select
        id as order_id,
        customer as customer_name,
        ordered_at as order_date
    from source
)
select * from renamed