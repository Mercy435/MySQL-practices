create database sql_w3_schools;
create table customers(
				customerid int not null auto_increment,
				customername varchar(50),
                contactname varchar(50),
                address varchar(100),
                city varchar(50),
                postalcode int,
                country varchar(50),
                primary key(customerid)
                );
alter table customers drop postalcode;
alter table customers add postalcode varchar(50);
alter table customers modify customerid int NOT NULL AUTO_INCREMENT 

insert into customers (customerid, customername, contactname, address, city, postalcode, country)
values('1','alfreds futterkiste', 'maria anders', 'Obere Str. 57', 'Berlin', '12209', 'Germany'
		);
insert into customers (customerid, customername, contactname, address, city, postalcode, country)
values
		('2','Ana Trujillo Emparedados', 'Ana Trujillo', 'Avda. de la Constitución 2222', 'México D.F.',
		'05021','Mexico'),
        ('3','Antonio Moreno Taquería', 'Antonio Moreno', 'Mataderos 2312', 'México D.F.',
		'05023','Mexico'),
        ('4','Around the Horn', 'Thomas Hardy', '120 Hanover Sq.', 'London',
		'WA1 1DP','UK'),
         ('5','Berglunds snabbköp', 'Christina Berglund', 'Berguvsvägen 8', 'Luleå',
		'S-958 22','Sweden');
update customers 
set postalcode = '12209'
where customerid = 1;

create table categories(categoryid int, categoryname varchar(50), description varchar(200));
insert into categories (categoryid, categoryname, description)
values
	('1', 'Beverages', 'Soft drinks, coffees, teas, beers, and ales'),
	('2', 'Condiments', 'Sweet and savory sauces, relishes, spreads, and seasonings'),
    ('3', 'Confections', 'Desserts, candies, and sweet breads'),
    ('4', 'Dairy Products', 'Cheeses'),
    ('5', 'Grains/Cereals', 'Breads, crackers, pasta, and cereal');
    
create table employees(employeeid int, lastname varchar(50), firstname varchar(100),
						birthdate date, photos varchar(100), notes varchar(500));
insert into employees(employeeid, lastname, firstname, birthdate, photos, notes)
values('1', 'Davolio','Nancy', '1968-12-08', 'EmpID1.pic', 'Education includes a BA in psychology from Colorado State University. She also completed (The Art of the Cold Call). Nancy is a member of \'Toastmasters International\'.'),
	  ('2', 'Fuller', 'Andrew', '1952-02-19', 'EmpID2.pic', 'Andrew received his BTS commercial and a Ph.D. in international marketing from the University of Dallas. He is fluent in French and Italian and reads German. He joined the company as a sales representative, was promoted to sales manager and was then named vice president of sales.'),
	  ('3', 'Leverling', 'Janet', '1963-08-30', 'EmpID3.pic', 'Janet has a BS degree in chemistry from Boston College). She has also completed a certificate program in food retailing management. Janet was hired as a sales associate and was promoted to sales representative.'),
      ('4', 'Peacock', 'Margaret', '1958-09-19', 'EmpID4.pic', 'Margaret holds a BA in English literature from Concordia College and an MA from the American Institute of Culinary Arts. She was temporarily assigned to the London office before returning to her permanent post in Seattle.'),
      ('5', 'Buchanan', 'Steven', '1955-03-04', 'EmpID5.pic', 'Steven Buchanan graduated from St. Andrews University, Scotland, with a BSC degree. Upon joining the company as a sales representative, he spent 6 months in an orientation program at the Seattle office and then returned to his permanent post in London, where he was promoted to sales manager.');

create table orderdetails(orderdetailid int, orderid int, productid int, quantity int);
insert into orderdetails (orderdetailid, orderid, productid, quantity)
values('1', '10248', '11', '12'),
	  ('2', '10248', '42', '10'),
      ('3', '10248', '72', '5'),
      ('4', '10249','14', '9'),
      ('5', '10249', '51', '40');
      
create table orders(orderid int, customerid int, employeeid int , orderdate date, shipperid int);
insert into orders(orderid, customerid, employeeid, orderdate, shipperid)
values('10248', '90', '5', '1996-07-04', '3'),
	  ('10249', '81', '6', '1996-07-05', '1'),
      ('10250', '34', '4', '1996-07-08', '2'),
      ('10251', '84', '3', '1996-07-08', '1'),
      ('10252', '76', '4', '1996-07-09', '2');

create table products(productid int, productname varchar(150), 
						supplierid int, categoryid int, unit varchar(50), price varchar(30));
alter table products drop price;
alter table products add price decimal(6,4);

insert into products(productid, productname, supplierid, categoryid, unit, price)
values('1','Chais', '1', '1', '10 boxes x 20 bags', '18'),
	  ('2', 'Chang', '1', '1', '24 - 12 oz bottles', '19'),
      ('3', 'Aniseed Syrup', '1', '2', '12 - 550 ml bottles', '10'),
      ('4','Chef Anton\'s Cajun Seasoning', '2', '2','48 - 6 oz jars', '22'),
      ('5', 'Chef Anton\'s Gumbo Mix','2', '2','36 boxes', '21.35'); 
      
create table shippers(shipperid int, shippername varchar(200), phone varchar(50));
insert into shippers(shipperid, shippername, phone)
values('1', 'Speedy Express', '(503) 555-9831'),
	  ('2', 'United Package', '	(503) 555-3199'),
      ('3', 'Federal Shipping', '(503) 555-9931');
      
create table suppliers (supplierid int, suppliername varchar(200), contactname varchar(200), address varchar(200), 
						city varchar(100), postalcode varchar(100), country varchar(100), phone varchar(100)); 
insert into suppliers(supplierid, suppliername, contactname, address, city, postalcode, country, phone)
values('1', 'Exotic Liquid', 'Charlotte Cooper', '49 Gilbert St.', 'Londona', 'EC1 4SD', ' UK', '(171) 555-2222'),
	  ('2', 'New Orleans Cajun Delights', 'Shelley Burke', 'P.O. Box 78934', 'New Orleans', '70117', 'USA', '(100) 555-4822'),
      ('3', 'Grandma Kelly\'s Homestead', 'Regina Murphy', '707 Oxford Rd.', 'Ann Arbor', '48104', 'USA', '(313) 555-5735'),
      ('4', 'Tokyo Traders', 'Yoshi Nagase', '9-8 Sekimai Musashino-shi', 'Tokyo', '100', ' Japan', '(03) 3555-5011'),
      ('5', 'Cooperativa de Quesos \'Las Cabras\'', 'Antonio del Valle Saavedra', 'Calle del Rosal 4', 'Oviedo', '33007', 'Spain', '(98) 598 76 54');
select * from customers;
select customername, city from customers;
select distinct country from customers;
select count(*) as distinct_countries 
from (select distinct countries from customers);
select * from customers where country = 'Mexico';
select * from customers where customerid = 1;
select * from customers where country = 'Germany' and city = 'Berlin';
select * FROM customers where city = 'Berlin' or city = 'München';
select * from customers where country = 'Germany' or country = 'Mexico';
select * from customers where not country = 'Mexico';
select * from customers where country='Germany' and (city='Berlin' or city='München');
select * from customers where not country = 'Germany' and not country = 'USA';
select * from customers order by city;
select * from customers order by country desc;
select * from customers order by country desc, customername asc;
insert into customers (customerid, customername, contactname, address, city, postalcode, country)
values ('6','Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');
insert into customers ( customername, city, country) values ( 'Cardinal', 'Stavanger', 'Norway');
insert into customers (customername,city) values ('Lars Monsen', ' LA ');
select customername, contactname, address from customers where address is null;
select customername, contactname, address from customers where address is not null;
create view Brazil_Customers as
select customername, contactname from customers where country = 'Brazil';
select * from brazil_customers;
create view Poducts_Above_Average_Price as 
SELECT ProductName, Price
FROM Products
WHERE Price > (SELECT AVG(Price) FROM Products);
CREATE OR REPLACE VIEW Brazil_Customers AS -- add city column
SELECT CustomerName, ContactName, City
FROM Customers
WHERE Country = 'Brazil';
select * from brazil_customers;
DROP VIEW Brazil_Customers;

