WITH base_orders AS (
    SELECT * 
    FROM {{ ref('stg_orders') }}
),


renamed_casted AS (
    SELECT
        order_id 
        , user_id 
        , promo_id
        , address_id
        , created_at_utc
        , item_order_cost_usd
        , shipping_cost_usd
        , total_order_cost_usd
        , tracking_id
        , shipping_service
        , estimated_delivery_at_utc
        , delivered_at_utc
        , status_order
    FROM base_orders
    )

SELECT * FROM renamed_casted