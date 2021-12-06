create table salesperson (
	sales_id serial primary key,
	first_name varchar(25),
	last_name varchar(25)
);

create table customer (
	customer_id serial primary key,
	first_name varchar(25),
	last_name varchar(25)
);

create table car (
	vin_num serial primary key,
	yr varchar (4),
	make varchar(25),
	model varchar(25),
	used boolean,
	sold boolean
);

create table invoice(
	PO serial primary key,
	price numeric,
	invoice_date date default current_date,
	vin_num integer not null,
	foreign key (vin_num) references car(vin_num),
	customer_id integer not null,
	foreign key (customer_id) references customer(customer_id),
	sales_id integer not null,
	foreign key (sales_id) references salesperson(sales_id)	
);

create table parts(
	parts_id serial primary key,
	part_name varchar(100),
	price numeric
);

create table mechanic(
	mechanic_id serial primary key,
	first_name varchar(25),
	last_name varchar(25)
);

create table service_ticket(
	st_id serial primary key,
	service_date date default current_date,
	service_performed varchar(100),
	customer_id integer not null,
	foreign key (customer_id) references customer(customer_id),
	vin_num integer not null,
	foreign key (vin_num) references car(vin_num),
	mechanic_id integer not null,
	foreign key (mechanic_id) references mechanic(mechanic_id),
	parts_id integer,
	foreign key (parts_id) references parts(parts_id),
	total_cost numeric not null
	);
	
create table service_record(
	record_id serial primary key,
	st_id integer not null,
	foreign key (st_id) references service_ticket(st_id)
);

