{% snapshot gre_sns_snapshot %}
{{
  config(
    unique_key='gre_sns_unique_key',
    strategy='timestamp',
    updated_at='dbt_loaded_at'
  )
}}

select * from {{ ref('stg_gre_sns') }}

{% endsnapshot %}
