-- models/fact/fct_customer_revenue.sql

WITH base AS (
    SELECT
        id_cliente,
        codigo_pais,
        id_pedido,
        monto,
        moneda
    FROM {{ ref('int_customer_orders') }}
)

SELECT
    id_cliente,
    codigo_pais,
    monto AS monto_original,
    moneda,
    SUM(CASE WHEN moneda = 'USD' THEN {{ usd_to_cop('monto') }} ELSE monto END) AS total_ganancia,
    COUNT(DISTINCT id_pedido) AS total_pedidos
FROM base
GROUP BY 1, 2, 3, 4