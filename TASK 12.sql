create table country(
id int primary key,
country_name varchar(20),
country_name_eng varchar(20),
country_code char(20)
)

create table city( 
id int primary key,
city_name varchar(20),
lat decimal(9,6),
long decimal(9,6),
country_id int foreign key (country_id) references dbo.country(id)
)

create table customers(
id int primary key,
customer_name varchar(20),
city_id int foreign key (city_id) references dbo.city(id),
customer_address varchar(20),
nextcall_date date,
ts_inserted datetime
)

create table employees(
id int primary key,
first_name varchar(255),
last_name varchar(255)
)



create table call_outcome(
id int primary key,
outcome_text char(128)
)

create table call(
id int primary key,
employee_id int foreign key(employee_id) references dbo.employees(id),
customer_id int foreign key (customer_id) references dbo.customers(id),
start_time datetime,
end_time datetime,
call_outcome_id int null foreign key (call_outcome_id)references dbo.call_outcome(id)
)

