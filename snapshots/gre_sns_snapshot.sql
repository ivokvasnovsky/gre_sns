{% snapshot gre_sns_snapshot %}

select * from {{ ref('stg_gre_sns') }}

{% endsnapshot %}
