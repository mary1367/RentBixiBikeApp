
CREATE DATABASE BixiBikeDB;


CREATE TABLE Tbl_Roles (
role_id SERIAL PRIMARY KEY,
role_name VARCHAR(50)
);


INSERT INTO Tbl_Roles (role_name)
VALUES ('admin');
INSERT INTO Tbl_Roles (role_name)
VALUES ('customer');
SELECT * FROM Tbl_Roles;


CREATE TABLE Tbl_Registers (
reg_id SERIAL PRIMARY KEY,

user_Name VARCHAR(50),
user_pass VARCHAR(50),
user_email VARCHAR(100)
);


INSERT INTO tbl_Registers ( user_Name, user_pass, user_email)
VALUES ( 'emily ', 'pass3', 'emily@example.com');



select* from Tbl_Registers;

CREATE TABLE Tbl_Users (
   user_id SERIAL  PRIMARY KEY,
   user_Name VARCHAR(50),
   user_pass VARCHAR(50),
   user_email VARCHAR(100),
   role_id INT,
   reg_id INT,
   FOREIGN KEY (role_id) REFERENCES Tbl_Roles (role_id),
   FOREIGN KEY (reg_id) REFERENCES Tbl_Registers (reg_id)
);
INSERT INTO Tbl_Users ( user_Name, user_pass, user_email, role_id, reg_id)
VALUES ('Maliheh', 'pass123', 'maliheh@example.com', 1, 2),
       ( 'Maryam ', 'pass456', 'maryam@example.com', 1, 1),
       ( 'Emily', 'pass789', 'emlily@example.com', 2,5 );
	  
	  
SELECT * FROM Tbl_Users;

CREATE TABLE Tbl_Locations (
   loc_id SERIAL PRIMARY KEY,
   loc_name VARCHAR(250)
);
    INSERT INTO Tbl_Locations (loc_name)
VALUES ( 'NDG'),
       ( 'Lasal'),
       ('West mount');
select * from Tbl_Locations;

CREATE TABLE Tbl_Bikes (
   bike_id SERIAL PRIMARY KEY,
   bike_color VARCHAR(25),
   loc_id INT,
   FOREIGN KEY (loc_id) REFERENCES Tbl_Locations (loc_id)
);

INSERT INTO Tbl_Bikes ( bike_color, loc_id)
VALUES ('blue', 1),
       ('red', 2),
       ( 'white', 3);


CREATE TABLE Tbl_Customers (
   cust_id SERIAL PRIMARY KEY,
   user_id INT,
   FOREIGN KEY (user_id) REFERENCES Tbl_Users (user_id)
);

INSERT INTO Tbl_Customers (  user_id)
VALUES ( 1),
       ( 2),
       (  3);
	   
	   select * from Tbl_Customers;
	   
	   
	   CREATE TABLE Tbl_Customer_Bike (
   custbikeId SERIAL PRIMARY KEY,
   cust_Id INT,
   bike_id INT,
   FOREIGN KEY (cust_Id) REFERENCES Tbl_Customers (cust_Id),
   FOREIGN KEY (bike_id) REFERENCES Tbl_Bikes (bike_id)
);



INSERT INTO Tbl_Customer_Bike (  cust_Id,bike_id)
VALUES ( 1,1),
       ( 2,2),
       (  3,3);
	   
	   select * from Tbl_Customer_Bike;
	   


