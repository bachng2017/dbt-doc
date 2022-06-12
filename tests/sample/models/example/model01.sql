
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
```dbt
columns:
  - name: id
    type: integer
    description: the only column
    tests:
      - unique
      - test01:
          - arg01: xxx
          - arg02: 3
      - test02:
          - xxx
          - yyy
```
*/

{{ config(materialized='table') }}

with source_data as (

    select 1 as id
    union all
    select null as id

)

select *
from source_data

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
