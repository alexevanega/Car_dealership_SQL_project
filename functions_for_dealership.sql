create or replace function add_car(
	car integer,
	yr varchar(4),
	make varchar(25),
	model varchar(25),
	used boolean,
	sold boolean
)
returns void
language plpgsql
as
$main$
begin
	insert into car (vin_num,yr,make,model,used,sold)
	values(car,yr,make,model,used,sold);
end;
$main$

create function add_customer(
	customer integer,
	first_name varchar(25),
	last_name varchar(25)
)
returns void
language plpgsql
as
$main$
begin
	insert into customer (customer_id,first_name,last_name)
	values(customer,first_name,last_name);
end;
$main$

create or replace function add_invoice(
	PO integer,
	price numeric,
	vin integer,
	customer integer,
	sales_id integer	
)
returns void
language plpgsql
as
$main$
begin
	insert into invoice (po,price,vin_num,customer_id,sales_id)
values(PO,price,vin,customer,sales_id);
end
$main$