{% macro update_source_id() -%}

update leap_sample_table SET source_id =  case when source_id IS NULL then 101  else source_id  end;

{%- endmacro %}
