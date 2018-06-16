drop table order_detail;

drop table shoe_product;
drop table shoe_brand;
drop table shoe_gender;
drop table shoe_size;

drop table s_order;
drop table customers;
drop table employees;
drop table s_manager;
drop table worker_address;

--shoe
CREATE TABLE shoe_size
(size_id			INT not null,
	US_malesize		DEC(6,2) not null,
	US_femalesize	DEC(6,2) not null,
	EUR_malesize	DEC(6,2) not null,
	EUR_femalesize	DEC(6,2) not null,
	UK_malesize		DEC(6,2) not null,
	UK_femalesize	DEC(6,2) not null,
 primary key (size_id));


--8.1875" (Female size starts here)
INSERT INTO shoe_size
     values(1, 0, 4, 0, 35, 0, 2); 
--8.375"
INSERT INTO shoe_size
     values(2, 0, 4.5, 0, 35, 0, 2.5); 
--8.5"
INSERT INTO shoe_size
     values(3, 0, 5, 0, 35.5, 0, 3);
--8.75"
INSERT INTO shoe_size
     values(4, 0, 5.5, 0, 36, 0, 3.5); 
--8.875"
INSERT INTO shoe_size
     values(5, 0, 6, 0, 36.5, 0, 4); 
--9.0625"
INSERT INTO shoe_size
     values(6, 0, 6.5, 0, 37, 0, 4.5); 
--9.25" (Male sizes starts here)
INSERT INTO shoe_size
     values(7, 6, 7, 39, 37.5, 5.5, 5); 
--9.375"
INSERT INTO shoe_size
     values(8, 6.5, 7.5, 39, 38, 5.5, 5.5); 
--9.5"
INSERT INTO shoe_size
     values(9, 7, 8, 40, 38.5, 2, 6); 
--9.6875"
INSERT INTO shoe_size
     values(10, 8, 8.5, 41, 39, 5.5,6.5); 
--9.875"
INSERT INTO shoe_size
     values(11, 8.5, 9, 41.5, 39.5, 2, 7); 
--10"
INSERT INTO shoe_size
     values(12, 9, 9.5, 42, 5.5, 8.5, 7.5);
--10.1875" 
INSERT INTO shoe_size
     values(13, 9.5, 10, 42.5, 40.5, 2, 8); 
 --10.3125"
INSERT INTO shoe_size
     values(14, 10, 10.5, 43, 41, 5.5, 8.5);
 --10.5"
INSERT INTO shoe_size
     values(15, 10.5, 11, 43.5, 41.5, 2, 9);
 --10.6875"
INSERT INTO shoe_size
     values(16, 11, 11.5, 44, 42, 5.5, 9.5);
 --10.875" (Female sizes end here)
INSERT INTO shoe_size
     values(17, 11.5, 12, 44.5, 42.5, 2, 10);
 --11.25" 
INSERT INTO shoe_size
     values(18, 12, 0, 46, 0, 11.5, 0);
 --11.5625"
INSERT INTO shoe_size
     values(19, 13, 0, 47, 0, 12.5, 0);
 --11.875"
INSERT INTO shoe_size
     values(20, 14, 0, 48, 0, 13.5, 0);
 --12.1875" (Male sizes end here)
INSERT INTO shoe_size 
     values(21, 15, 0, 49, 0, 14.5, 0);


--only 2 genders, Male and Female
CREATE TABLE shoe_gender
(gender_id			INT not null,
	genders			char(1) not null,
primary key (gender_id));


--populate shoe gender
INSERT INTO shoe_gender
	values(20, 'M');
INSERT INTO shoe_gender
	values(21, 'F');


CREATE TABLE shoe_brand
(brand_id			INT not null,
	brand_name		char(25) not null,
	brand_rating	DEC(6,2) not null,
primary key	(brand_id));


--populate shoe brand description
INSERT INTO shoe_brand
	values(1000, 'Nike', 4.80);
INSERT INTO shoe_brand
	values(2000, 'Adidas', 4); 
INSERT INTO shoe_brand
 	values(3000, 'Reebok', 4); 
INSERT INTO shoe_brand
 	values(4000, 'Puma', 3); 
INSERT INTO shoe_brand
 	values(5000, 'Asics', 4); 
INSERT INTO shoe_brand
 	values(6000, 'New Balance', 3); 


--shoe id  shoe with categories
CREATE TABLE shoe_product
(shoe_id			INT not null,
	qty_on_hand		INT not null,
	price			DEC(6,2) not null,
	size_id			INT not null,
	gender_id		INT not null,
	brand_id		INT not null,
primary key (shoe_id),
foreign key	(size_id) 		references shoe_size,
foreign key (gender_id) 	references shoe_gender,
foreign key	(brand_id)		references shoe_brand);


--populate shoe_product
INSERT INTO shoe_product
 	values(10000, 20, 99.99, 6, 21, 6000);
INSERT INTO shoe_product
 	values(10001, 20, 99.99, 21, 20, 2000);
INSERT INTO shoe_product
 	values(10002, 58, 199.99, 4, 20, 5000);
INSERT INTO shoe_product
 	values(10003, 83, 50.00, 7, 21, 2000);
INSERT INTO shoe_product
 	values(10004, 94, 89.00, 17, 21, 3000);
INSERT INTO shoe_product
 	values(10005, 103, 64.99, 15, 20, 5000);
INSERT INTO shoe_product
 	values(10006, 143, 159.99, 13, 20, 6000);
INSERT INTO shoe_product
 	values(10007, 163, 184.99, 15, 21, 2000);
INSERT INTO shoe_product
 	values(10008, 123, 29.99, 8, 20, 2000);
INSERT INTO shoe_product
 	values(10009, 48, 99.99, 7, 20, 6000);
INSERT INTO shoe_product
 	values(10010, 10, 57.99, 16, 21, 1000);
INSERT INTO shoe_product
 	values(10011, 39, 73.99, 17, 20, 1000);
INSERT INTO shoe_product
 	values(10012, 26, 62.99, 11, 21, 5000);
INSERT INTO shoe_product
 	values(10013, 82, 93.99, 18, 20, 2000);
INSERT INTO shoe_product
 	values(10014, 36, 61.99, 19, 20, 3000);
INSERT INTO shoe_product
 	values(10015, 59, 72.99, 9, 21, 5000);
INSERT INTO shoe_product
 	values(10016, 109, 83.99, 7, 21, 2000);
INSERT INTO shoe_product
	values(10017, 26, 94.99, 12, 20, 6000);
INSERT INTO shoe_product
 	values(10018, 83, 26.99, 1, 21, 2000);
INSERT INTO shoe_product
 	values(10019, 59, 40.99, 21, 20, 1000);



CREATE TABLE worker_address
(address_id					INT not null,
	street					varchar(25) not null,
	city					char(25) not null,
	state					char(2) not null,
	zipcode					INT not null,
primary key (address_id));

--list of addresses for employee/manager that works in the store
INSERT INTO worker_address
	values(01, '123 3rd Ave', 'San Francisco', 'CA', 94122);
INSERT INTO worker_address
	values(02, '241 8th Ave', 'San Francisco', 'CA', 94123);
INSERT INTO worker_address
	values(03, '2142 Market St', 'San Francisco', 'CA', 94114);
INSERT INTO worker_address
	values(04, '1401 Turlock Ln', 'San Jose', 'CA', 95132);
INSERT INTO worker_address
	values(05, '2127 29th Ave', 'San Francisco', 'CA', 94116);
INSERT INTO worker_address
	values(06, '1040 Gilman Dr', 'San Francisco', 'CA', 94015);
INSERT INTO worker_address
	values(07, '1812 Easton Dr', 'Burlingame', 'CA', 94010);
INSERT INTO worker_address
	values(08, '1529 St Charles St', 'Alameda', 'CA', 94501);
INSERT INTO worker_address
	values(09, '1436 Stannage Ave', 'Berkeley', 'CA', 94702);
INSERT INTO worker_address
	values(10, '40760 Robin St', 'Fremont', 'CA', 94538);
INSERT INTO worker_address
	values(11, '3121 Taraval St', 'San Francisco', 'CA', 94116);
INSERT INTO worker_address
	values(12, '338 Menker Ave.', 'San Jose', 'CA', 95128);



--store manager/employee/customer relationship
CREATE TABLE s_manager
(manager_id					INT not null,
	manager_name			char(30) not null,
	salary					DEC(7,2) not null,
	phone_num				INT not null,
	address_id				INT not null,
primary key (manager_id),
foreign key (address_id)	references worker_address);


--2 managers is enough for 10+/- employees
INSERT INTO s_manager
 	values(51, 'Samuel Chow', 70000.50, 7230005432, 01);
INSERT INTO s_manager
	values(52, 'Florie King', 65000.50, 2534567890, 02);



CREATE TABLE employees
(emp_id						INT not null,
	employee_name			char(30) not null,
	salary					DEC(7,2) not null,
	phone_num				INT not null,
	manager_id				INT not null,
	address_id				INT not null,
primary key (emp_id),
foreign key (manager_id)	references s_manager,
foreign key	(address_id)	references worker_address);

-- 10+/- employees in the store
INSERT INTO employees
	values(700000, 'Amy Rebecca', 60000.40, 2398069548, 51, 03);
INSERT INTO employees
	values(700001, 'William Yi', 40000.32, 2309582734, 51, 04);
INSERT INTO employees
	values(700002, 'Sang Soo', 40123.26, 2629306832, 52, 05);
INSERT INTO employees
	values(700003, 'Tommy Abra', 40025.23, 2398069347, 52, 06);
INSERT INTO employees
	values(700004, 'Tina Comm', 40073.27, 2399808432, 51, 07);
INSERT INTO employees
	values(700005, 'Jen Cesar', 40072.41, 2399802789, 51, 08);
INSERT INTO employees
	values(700006, 'Loi Diane', 40027.72, 2399808446, 52, 09);
INSERT INTO employees
	values(700007, 'Nake Kick', 40072.72, 2389802534, 52, 10);
INSERT INTO employees
	values(700008, 'Bruce Wayne', 40083.25, 2389807289, 51, 11);
INSERT INTO employees
	values(700009, 'Bruce Nemo', 40253.25, 2389805378, 51, 12);




CREATE TABLE customers
(customer_id       			INT not null,
	customer_name         	char(20) not null,
	phone_num				INT not null,
	emp_id					INT not null,
primary key (customer_id),
foreign key (emp_id)	references employees);


--15+ customers querying for purchase handled by employees
INSERT INTO customers
	values(900025, 'Jacky Chow', 5235234267, 700000);
INSERT INTO customers
	values(900277, 'Bonnie King', 6825326145, 700001);
INSERT INTO customers
	values(900735, 'Kiet Will', 7279383523, 700002);
INSERT INTO customers
	values(900936, 'Francisco Lee', 9234567890, 700003);
INSERT INTO customers
	values(900444, 'Hung Bree', 9446252414, 700004);
INSERT INTO customers
	values(900222, 'Cecilia Lex', 8363532111, 700005);
INSERT INTO customers
	values(900888, 'Christopher Shell', 8464524211, 700006);
INSERT INTO customers
	values(900340, 'David Kruz', 7383653423, 700007);
INSERT INTO customers
	values(900883, 'Diane Sodh', 3645454545, 700008);
INSERT INTO customers
	values(900253, 'Rachel Quest', 2627272829, 700000);
INSERT INTO customers
	values(900223, 'Tim Groove', 2436678234, 700001);
INSERT INTO customers
	values(900094, 'Matt Damin', 2533432672, 700002);
INSERT INTO customers
	values(900364, 'Theresa Major', 7354354324, 700003);
INSERT INTO customers
	values(900513, 'Vincent Wellicks', 8363543143, 700004);
INSERT INTO customers
	values(900999, 'Angie List', 7354352678, 700005);


--customer store order
CREATE TABLE s_order
(order_id					INT not null,
	order_date				DATE not null,
	customer_id				INT not null,
primary key (order_id),
foreign key (customer_id) references customers);


--populating what customers order in the store
INSERT INTO s_order
	values(127316, '05-NOV-17', 900999);
INSERT INTO s_order
	values(162214, '02-SEP-17', 900513);
INSERT INTO s_order
	values(181123, '16-JAN-17', 900364);
INSERT INTO s_order
	values(119232, '17-FEB-17', 900223);
INSERT INTO s_order
	values(181213, '11-JUN-17', 900888);
INSERT INTO s_order
	values(167725, '12-JUL-17', 900735);
INSERT INTO s_order
	values(126388, '13-DEC-17', 900340);
INSERT INTO s_order
	values(179443, '18-AUG-17', 900883);
INSERT INTO s_order
	values(162725, '20-MAR-17', 900883);
INSERT INTO s_order
	values(183948, '25-APR-17', 900222);
INSERT INTO s_order
	values(116272, '02-JUN-17', 900444);
INSERT INTO s_order
	values(128836, '07-SEP-17', 900936);
INSERT INTO s_order
	values(112783, '11-DEC-17', 900735);
INSERT INTO s_order
	values(172772, '11-DEC-17', 900277);
INSERT INTO s_order
 	values(172738, '11-DEC-17', 900025);



--what shoes customers ordered and amount
CREATE TABLE order_detail
(order_id				INT not null,
	shoe_id				INT not null,
	qty_bought			INT not null,
primary key (order_id, shoe_id),
foreign key (order_id)	references s_order,
foreign key (shoe_id) 	references shoe_product);


INSERT INTO order_detail
	values(127316, 10000, 2);
INSERT INTO order_detail
	values(162214, 10001, 2);
INSERT INTO order_detail
	values(181123, 10002, 3);
INSERT INTO order_detail
	values(119232, 10003, 1);
INSERT INTO order_detail
	values(181213, 10004, 1);
INSERT INTO order_detail
	values(167725, 10005, 1);
INSERT INTO order_detail
	values(126388, 10006, 1);
INSERT INTO order_detail
	values(179443, 10007, 2);
INSERT INTO order_detail
	values(162725, 10008, 1);
INSERT INTO order_detail
	values(183948, 10009, 1);
INSERT INTO order_detail
	values(116272, 10010, 2);
INSERT INTO order_detail
	values(128836, 10011, 3);
INSERT INTO order_detail
	values(112783, 10012, 1);
INSERT INTO order_detail
	values(172772, 10013, 2);
INSERT INTO order_detail
	values(172738, 10014, 1);



--commit
commit;