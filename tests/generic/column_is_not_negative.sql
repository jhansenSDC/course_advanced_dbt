-- Use when field cannot be negative, should always be >= 0
-- This returns records where this isn't true to make the test fail


{% test column_is_not_negative (model, column_name) %}

SELECT *
FROM {{ model }}
WHERE {{ column_name }} <= 0

{% endtest %}
