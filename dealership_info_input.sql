insert into customer (first_name,last_name)
values('Alex','Evanega');
insert into customer (first_name,last_name)
values('Kathryn','Lavoie');
insert into customer (first_name,last_name)
values('Elijah','Simpson');
insert into customer (first_name,last_name)
values('Amanda','Whitley');
insert into customer (first_name,last_name)
values('Julie','Youmans');

insert into salesperson (first_name,last_name)
values('Robert','Evanega');
insert into salesperson (first_name,last_name)
values('Jamie','Wilson');

insert into car (yr,make,model,used,sold)
values ('2017','Nissan','Frontier',true,true);
insert into car (yr,make,model,used,sold)
values ('2021','Ford','Explorer',False,true);
insert into car (yr,make,model,used,sold)
values ('1999','Jeep','Cherokee',true,true);
insert into car (yr,make,model,used,sold)
values ('2015','Chevrolet','Express',true,true);
insert into car (yr,make,model,used,sold)
values ('2021','Ford','Bronco',False,False);
insert into car (yr,make,model,used,sold)
values ('2019','Ford','F-150',true,False);

select * from car;

insert into invoice (price,invoice_date,vin_num,customer_id,sales_id)
values(1800.00,'06/16/2016',3,1,1);
insert into invoice (price,invoice_date,vin_num,customer_id,sales_id)
values(22000.00,'02/23/2017',1,2,2);
insert into invoice (price,vin_num,customer_id,sales_id)
values(15000.00,4,4,1);


select * from invoice;

insert into parts (part_name,price)
values('motor oil',20.00);
insert into parts (part_name,price)
values('tire',110.00);
insert into parts (part_name,price)
values('spark plug',10.00);
insert into parts (part_name,price)
values('alternator',100.00);

insert into mechanic (first_name,last_name)
values('Jesse','Whitely');
insert into mechanic (first_name,last_name)
values('Brandon','Shaner');

insert into service_ticket (service_date,service_performed,customer_id,
	vin_num,mechanic_id,parts_id,total_cost)
values('10/22/2021','oil change',5,5,2,1,50.00);
insert into service_ticket (service_performed,customer_id,
	vin_num,mechanic_id,parts_id,total_cost)
values('changed spark plugs',3,6,1,3,100.00);

select * from service_ticket;

insert into service_record (st_id)
values(2);

insert into service_record (st_id)
values(3);

select * from service_record;

