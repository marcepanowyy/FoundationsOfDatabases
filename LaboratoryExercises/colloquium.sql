Zad.1. 

use Northwind

select top 1 productname from products p
inner join [order details] od on od.productid = p.productid
inner join orders o on o.orderid = od.orderid
where year(orderdate) = 1996
group by p.productid, productname
having sum(od.unitprice * od.quantity * (1-od.discount)) > 0
order by sum(od.unitprice * od.quantity * (1-od.discount))

Zad.2.

use library

select m1.firstname + ' ' + m1.lastname as reader, 'adult' as age, a1.street + ' ' + a1.city + ' ' + a1.state + ' ' + a1.zip as address, count(isnull(j1.member_no, 0)) as child_num from member m1
inner join adult a1 on a1.member_no = m1.member_no
left join juvenile j1 on j1.adult_member_no = m1.member_no
group by m1.member_no, m1.firstname + ' ' + m1.lastname, a1.street + ' ' + a1.city + ' ' + a1.state + ' ' + a1.zip
union
select m2.firstname + ' ' + m2.lastname as reader, 'child' as age, a2.street + ' ' + a2.city + ' ' + a2.state + ' ' + a2.zip as address, NULL as child_num from member m2
inner join juvenile j on j.member_no = m2.member_no
inner join adult a2 on a2.member_no = j.adult_member_no
where m2.member_no not in(select member_no from loan) and m2.member_no not in(select member_no from loanhist)

Zad.3.

use Northwind

select e.firstname, e.lastname, isnull((select sum(freight) from orders where orders.employeeid = e.employeeid and year(orderdate) = 1997 and month(orderdate) = 2) +
                         (select sum(quantity * unitprice * (1-discount)) from orders o inner join [order details] od on o.orderid = od.orderid
                          where year(orderdate) = 1997 and month(orderdate) = 2 and o.employeeid = e.employeeid), 0) as value,

         isnull((select count(*) from orders o
    where o.employeeid = e.employeeid and year(orderdate) = 1997 and month(orderdate) = 2), 0) as order_num

       from employees e
