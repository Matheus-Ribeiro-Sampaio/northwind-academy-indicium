with
    order_details as (
        select 
            cast(orderid as integer) as orderid, 
            cast(productid as integer) as productid, 
            cast(unitprice as float) as unitprice, 
            cast(quantity as integer) as quantity, 
            cast(discount as float) as discount
        from {{ source("northwind", "ORDERDETAIL") }}
    )

select *
from order_details
