create database if not exists TalealotSales;

create table if not exists Sales (
    invoice_id varchar (30) not null primary key,
    brach varchar (5) not null,
    city varchar (30) not null,
    customer_type varchar(30) not null,
    gender varchar (10) not null,
    product_line varchar (100) not null,
    unit_price decimal (10, 2) not null,
    quantity int not null,
    VAT float (6, 4) not null,
    Total decimal (12,4) not null,
    date datetime not null,
    time time not null,
    payment_method varchar (15) not null,
    cogs decimal (10, 2) not null,
    gross_Margin_pct float(11,9),
    gross_income decimal(12, 4) not null,
    rating float (2,1)
    
    );
    
    
select  
 time,
 (Case 
 when time between "00:00:00" and "12:00:00" then "Morning"
  when time between "12:01:00" and "16:00:060" then "Afternoon"
  Else "Evening" 
  end
  ) As time_of_date
 from sales;
 
 alter table sales add column time_of_day varchar(20);
 
 update sales
 set time_of_day = (
 Case 
 when 'time' between "00:00:00" and "12:00:00" then "Morning"
  when 'time' between "12:01:00" and "16:00:060" then "Afternoon"
  Else "Evening" 
  end
  );
  
  select
  date,
  dayname(date) As day_name
  from sales;
 
 alter table sales add column day_name varchar(10);
 
 update sales 
 set day_name =dayname(date);
 
 select 
 date,
 monthname(date)
 from sales;
 
 Alter table sales add column month_name varchar(10);
 
 update sales
 set month_name = monthname(date);
 
 
 select 
 distinct city
 from sales;
 
  select 
 distinct brach
 from sales;
 
 
 
 
 -- How many products does the dataset have?
 Select 
 count(distinct product_line)
 from sales;
 
 
 -- Different product names
  Select 
 distinct product_line
 from sales;
 
 -- Most common payment method
 select
	payment_method,
	COUNT(payment_method) AS cnt
 from sales
 Group by payment_method;
 
  -- What is the most selling product?
  select
  	product_line,
	COUNT(product_line) AS cnt
 from sales
 Group by product_line;



 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
