-- models/staging/stg_orders.sql

SELECT
    order_id AS id_pedido,
    customer_id AS id_cliente,
    order_date AS fecha_orden,
    amount AS monto,
    amount_cents AS monto_centavos,
    currency AS moneda,
    order_status AS estado_orden,
    payment_method AS metodo_pago,
    discount_amount AS descuento,
    item_count AS cantidad
FROM raw.raw_orders