----Write a solution to get the names of products that have at least 100 units ordered in February 2020 and their amount.
--ALL TABLE & DATA 
create table products(
    product_id int not null primary key identity(1, 1),
    product_name varchar(255),
    product_category varchar (255)
)
insert into
    products
values
    ('Leetcode Solutions', 'Book'),
    ('Jewels of Stringology', 'Book'),
    ('HP', 'Laptop'),
    ('Lenovo ', 'Laptop '),
    ('Leetcode Kit', 'T-shirt ')
select
    *
from
    products create table oders(
        product_id int not null foreign key REFERENCES products(product_id),
        order_date date,
        unit int,
    )
insert into
    oders
values
    (2, '2020-01-18', 30),
    (2, '2020-02-11', 80),
    (3, '2020-02-17', 2),
    (3, '2020-02-24', 3),
    (4, '2020-03-01 ', 20),
    (4, '2020-03-04 ', 30),
    (4, '2020-03-04 ', 60),
    (5, '2020-02-25 ', 50),
    (5, '2020-02-27 ', 50),
    (5, '2020-03-01', 50) --ALL TABLE & DATA 
    --SOLUTIONS
select
    p.product_id,
    p.product_name,
    SUM(o.unit) as unit
from
    products p
    join oders o on p.product_id = o.product_id
where
    o.order_date between '2020-02-01'
    and '2020-02-29'
group by
    product_name,
    p.product_id
having
    SUM(o.unit) >= 100