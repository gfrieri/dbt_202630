-- models/staging/stg_customers.sql

SELECT
    customer_id AS id_cliente,
    name AS nombre,
    UPPER(country_code) AS codigo_pais,
    created_at AS fecha_creacion,
    city AS ciudad,
    postal_code AS codigo_postal,
    preferred_language AS idioma_preferido,
    signup_channel AS canal_registro,
    is_active AS activo,
    customer_tier AS nivel_cliente
FROM raw.raw_customers