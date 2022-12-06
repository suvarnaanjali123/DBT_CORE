{% macro slugify(column_name) %}

  REGEXP_REPLACE(REGEXP_REPLACE(LOWER({{ column_name }}), '[ -]+', '_'), '[^a-z0-9_]+', '') AS {{ column_name }}

{% endmacro %}