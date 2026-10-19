--models/intermediate/int_customer_orders.sql

WITH orders AS (
    SELECT 
        id_pedido,
        id_cliente,
        monto,
        moneda
    FROM {{ ref('stg_orders') }}
),
customers AS (
    SELECT 
        id_cliente,
        codigo_pais
    FROM {{ ref('stg_customers') }}
)

SELECT
    c.id_cliente,
    c.codigo_pais,
    o.id_pedido,
    o.monto,
    o.moneda
FROM customers c
JOIN orders o
ON c.id_cliente = o.id_cliente