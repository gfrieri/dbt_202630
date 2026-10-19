{% macro usd_to_cop(usd_amount) %}
    {{ usd_amount }} * {{ var('usd_hoy') }}
{% endmacro %}