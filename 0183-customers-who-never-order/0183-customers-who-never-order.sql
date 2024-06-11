SELECT name as Customers from Customers
where ID not in (
    SELECT distinct customerId 
    from Orders
)