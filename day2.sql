#1. Create a table named Students with columns for StudentID (Primary Key), 
#FirstName, LastName, and Age.Ensure that StudentID is unique for each record.
create table Student (StudentID INT Primary Key, FirstName varchar(100),LastName varchar(100),Age int(2));

#2.Add a unique constraint to the Email column in the existing Students table.
Alter table Student add column Email varchar(50);
Alter table Student add constraint Unique(Email);
desc Student;

#3.Create a new table named Courses with columns for CourseID and CourseName.Add a foreign key constraint to 
#the CourseID column in the Students table, referencing the CourseID column in the Courses table.
create table Courses (CourseID INT,CourseName varchar(50));
Alter table Student add column CourseID INT;
Alter table Courses add constraint Primary key(CourseID);
Alter table Student add constraint Foreign key(CourseID) references Courses(CourseID);

#4.Add a check constraint to the Age column in the 
#Students table to ensure that students' ages are between 18 and 25.
Alter table Student add constraint Check(Age BETWEEN 18 AND 25);

#5.Ensure that the FirstName column in the Students table cannot contain null values.
Alter table Student modify FirstName varchar(100) NOT NULL;

#6.Drop the unique constraint on the Email column in the Students table.
Show index from Student;
ALter table Student drop index Email;


#7.Create a table named Employees with columns for EmployeeID (Primary Key), FirstName,
# LastName, Salary, and DepartmentID (Foreign Key referencing DepartmentID in another table).
#Ensure that Salary cannot be negative and DepartmentID cannot be null.
create table Department (DepartmentID INT PRIMARY KEY);
create table Employees(EmployeeID INT PRIMARY KEY, 
FirstName varchar(50),LastName varchar(50),Salary INT check (Salary>0),
DepartmentID INT, Foreign key(DepartmentID) references Department(DepartmentID));

#8.Add a foreign key constraint with cascade delete to the DepartmentID column in the Employees table.
# Ensure that when a department is deleted, all associated employees are also deleted.

#9Create a table named Orders with a composite primary key 
#consisting of OrderID and CustomerID.Ensure that each combination of OrderID and CustomerID is unique.
create table Orders_new (
OrderID INT,CustomerID INT,
PRIMARY KEY(OrderID,CustomerID)); 


#10Temporarily disable all constraints on the Students table to perform bulk data import.

#11 Select all products with a price greater than 20 from the "Products" table.
select * from Products where Price>20;

#12. Find the total number of orders in the "Orders" table.
select COUNT(*) from Orders;

#13. Select distinct countries from the "Customers" table.
select distinct Country from Customers;

select * from Customers;

#logical operators
#1
create table Suppliers (SupplierId INT,SupplierName varchar(50));
insert into Suppliers values (1,'A');
insert into Suppliers values (1=2,'John Doe');
select CustomerName, SupplierName as names from Customers,Suppliers where CustomerID = SupplierID;

#2
select SupplierName as names from Customers,Suppliers where CustomerName = SupplierName;



#3
select SupplierName,CustomerName from Customers,Suppliers where NOT CustomerName = SupplierName;

#4
select OrderId from Orders where Orders.CustomerID = Customers.CustomerID AND 
Country='USA' OR Country='Canada';
#SQL clauses
select ProductID,SUM(Quantity) from OrderDetails group by ProductID;
select ProductID,SUM(Quantity) from OrderDetails group by ProductID having SUM(Quantity)>100;
select ProductName from Products order by Price desc;
select * from Customers order by CustomerName; 

#arithmetic
select Products.Price + OrderDetails.Quantity as Total_Amount from 
Products join OrderDetails on Products.ProductID=OrderDetails.ProductID;
select ProductName,Price-2 as Price from Products;
select Products.Price * OrderDetails.Quantity as Total_Revenue from 
Products join OrderDetails on Products.ProductID=OrderDetails.ProductID;
select ProductName,Price/2 from Products;
select ProductID,Price%3 from Products;

#comparision operators
select * from Customers where Country='USA';
select * from Products where Price !=20;
select OrderId from OrderDetails where Quantity>10;

select * from Products where Price BETWEEN 10 and 20;
select * from Customers where Country='USA' AND ContactNumber is not null;
select * from Customers where Country IN ('USA','Canada');
select * from Products where Price != 15.99;
select * from Customers where 
Customers.Country='USA' and
 (Customers.ContactNumber IS NOT NULL or CustomerID in (select CustomerID from Orders))  ;
select * from Products where Price >10 and Price <20;


#logical operators
select * from Suppliers;
insert into Suppliers values(1,'John Doe');
select CustomerName from Customers where CustomerID=SupplierID;
select CustomerName from Customers where CustomerName not in (select SupplierName from Suppliers);
select OrderId,CustomerName from Orders join Customers on
 Orders.CustomerID = Customers.CustomerID where Customers.Country in ('USA','Canada');
 
 
 
 #Pattern Matching Operators
 select CustomerName from Customers having CustomerName like 'j%';
 select * from Products having ProductName like '%Product%';
 select * from Customers where Country not like 'U%';
 select * from Customers where CustomerName like'________';
 select * from Customers where CustomerName like '%a%' or '%A%';
 
 #SET OPERATORS 
 select CustomerID from Customers where Customers.CustomerID not in (select CustomerID from Orders); 
 select CustomerID from Customers where Customers.CustomerID in (select CustomerID from Orders);
 
 Select ProductID,count(OrderID) from OrderDetails where count(OrderID)>1 group by OderID; 
 
 #aggregate functions
 select count(*) from Orders;
 select AVG(Price) from Products;
 select MAX(Quantity) from OrderDetails;
 select SUM(OrderDetails.Quantity * Products.Price) 
 from OrderDetails join Products on OrderDetails.ProductID=Products.ProductID;
 select min(Price) from Products;
 
 #date functions
 select now();
 select sysdate();
 select curdate();
 select curtime();
SELECT DATEDIFF('2024-06-06', '2024-04-06');
select extract(YEAR from '2003-06-06');
select date_add('2003-06-06',interval 365 day);


#string fuctions
select ASCII("chandini");
select char_length("  chandin i");
select concat("i"," am "," chandini");
select concat_ws(' ','hi','chandini');
select UPPER(ProductName) from Products;
select substr(PtName,1,3) from Products;
select length(ProductName) as length from Products;
select replace(Country,'USA','United States') from Customers; #where Country='USA';


#joins
#Retrieve the order details along with the product names for all orders.
select OrderDetails.OrderID,OrderDetails.ProductId,OrderDetails.Quantity,Products.ProductName 
from Products join 
OrderDetails on OrderDetails.ProductID= Products.ProductID;
#Get the customer names and their profile details.
select Customers.CustomerName,CustomerProfiles.ProfileDetails
 from CustomerProfiles join Customers on CustomerProfiles.CustomerID=Customers.CustomerID;
 #List all products that have been ordered along with their prices.
 select * from Products join OrderDetails on OrderDetails.ProductID=Products.ProductID;
 
 #Find the order dates and corresponding customer names for orders containing more than 2 items.
 select Orders.OrderDate,Customers.CustomerName
 from Customers join Orders on 
 Customers.CustomerID=Orders.OrderID join OrderDetails on 
 OrderDetails.OrderID=Orders.OrderId where OrderDetails.Quantity>2;
 
 
 #Display all orders along with the customer email addresses.
 select Orders.OrderId,Customers.Email 
 from Customers join Orders on Customers.CustomerID = Orders.CustomerID;
 #List all customers along with their orders (if any).
 select Customers.CustomerID,Customers.CustomerName,Customers.Country
 from Customers left join Orders on Customers.CustomerID = Orders.CustomerID;
 #Get all products and include orders if they exist.
 select Products.ProductName,Products.Price,OrderDetails.OrderId 
 from Products left join OrderDetails on Products.ProductID = OrderDetails.ProductID; 
 #Retrieve all customers and their profile details if available.
 select Customers.CustomerName,CustomerProfiles.ProfileDetails 
 from Customers join CustomerProfiles on Customers.CustomerID=CustomerProfiles.CustomerID;
 #Show all orders and include product names if they were ordered.
 select OrderDetails.OrderID,Products.ProductName
 from OrderDetails left join Products on OrderDetails.ProductID=Products.ProductID;
 #List all customers with their contact numbers and emails even if they haven't placed an order.
 select Customers.CustomerName,Customers.Email 
 from Customers left join Orders on Customers.CustomerID=Orders.CustomerID;
 #Display all orders and include customer names if available.
 select Orders.OrderID , Customers.CustomerName
 from Orders left join Customers on Orders.CustomerID=Customers.CustomerID;
 
 #List all customers and their orders, including those who 
 #haven't placed orders and orders with no associated customers.
 select Customers.CustomerName,Orders.OrderId from 
 Customers left join Orders on Customers.CustomerID=Orders.CustomerID
 UNION
 select Customers.CustomerName,Orders.OrderId 
 from Customers right join Orders on Customers.CustomerID=Orders.CustomerID;
 
 #Retrieve all products and order details, including 
 #products not ordered and orders without products.
 select Products.ProductName,Orders.OrderId from 
 Products left join Orders on Products.ProductID=Orders.OrderId
 UNION
 select Products.ProductName,Orders.OrderId from 
 Products right join Orders on Products.ProductID=Orders.OrderId;
 
 
 #Retrieve all products and order details, including products not ordered and orders without products.
 select Customers.CustomerName,CustomerProfiles.ProfileDetails 
 from Customers left join CustomerProfiles on Customers.CustomerID=CustomerProfiles.CustomerID
 UNION
 select Customers.CustomerName,CustomerProfiles.ProfileDetails 
 from Customers right join CustomerProfiles on Customers.CustomerID=CustomerProfiles.CustomerID;
 
 #Find pairs of customers from the same country.
 SELECT t1.CustomerName AS Customer1,
       t2.CustomerName AS Customer2
FROM Customers t1
JOIN Customers t2 ON t1.Country = t2.Country
WHERE t1.CustomerID < t2.CustomerID;

select * from Customers;
insert into Customers (CustomerName,Country) values ('Chandini','India');

#List customers who have the same contact name.
select t1.ContactNumber,t2.ContactNUmber
  from Customers t1 join Customers t2 on 
 t1.ContactNumber=t2.ContactNumber where t1.CustomerID<t2.CustomerID;
 
 select ContactNumber from Customers;
 #
SELECT t1.CustomerName AS Customers
FROM Customers t1
JOIN Customers t2 ON t1.CustomerID < t2.CustomerID
WHERE SUBSTR(t1.ContactNumber, 1, 3) = SUBSTR(t2.ContactNumber, 1, 3);

#
SELECT Customers.CustomerID,
       Customers.CustomerName,
       Products.ProductID,
       Products.ProductName
FROM Customers
CROSS JOIN Products;

#Show all possible order dates and product names.
select Orders.OrderDate,Products.ProductName from Orders cross join Products;

#VIEWS
#1. Create a simple view that selects specific columns from a single table.
create or replace view myview as select * from Products;
select * from myview;
create or replace view myview2 as select * from Products where Products.Price> 10;
create view Joinview as select OrderDetails.OrderID,OrderDetails.ProductId,OrderDetails.Quantity,Products.ProductName 
from Products join 
OrderDetails on OrderDetails.ProductID= Products.ProductID;
select * from myview;
update myview set Price=22 where Price=22.04;
select * from Products;
update myview set Price=22.04 where Price=22 ; 

#Procedures
call new_procedure('Chandini');
call insertprod_procedure(500,'Chocolate',5);
call orderpro(560,'2024-06-06',510);
call selectcustomer();

Delimiter ||
create procedure print_message()
Begin
Declare var varchar(40) Default 'NA';
select var;
End || 
call print_message()


Delimiter ||
create procedure print_mail()
Begin
Declare fn varchar(20) ;declare l varchar(20);declare c varchar(20) default '@miraclesoft.com';
set fn='chandini';
set l='maredla';
select concat(substr(fn,1,1),l,c);
End ||
call print_mail();

DELIMITER ||
create trigger after_insert
after insert on Customers
for each row
begin
declare id int;
insert into CustomerProfiles (CustomerID) values(NEW.CustomerID);
end ||

insert into Customers (CustomerID,CustomerName,Country,ContactNumber) 
values(700,'chandini','India',7967489570);
select * from Customers;
select * from CustomerProfiles;

#Create a trigger that logs changes to product prices in a separate table called
#ProductPriceLog whenever a product's price is updated.
create table ProductPriceLog( ProductID int,Price double);
Delimiter ||
create trigger newtable
after update on Products
for each row
begin
insert into ProductPriceLog(ProductID,Price) values (NEW.ProductID,NEW.Price);
end ||

update Products set Price=1 where ProductID=2;
select * from ProductPriceLog;roduc
