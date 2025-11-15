create database APU_EBook_store;
use APU_EBook_store;


-- 1 create table Books
create table Books(
Book_ID varchar(50) not null,
title varchar(50),
Publisher_ID varchar(50),
Genre varchar(50),
Price decimal(10,2),
Quantity int(40),
primary key (Book_ID) 


select* from Books;

insert into Books values
('B01', 'The Great Gatsby', 'P01', 'Literary fiction', 85, 10),
('B02', 'The Girl with the Dragon Tattoo', 'P02', 'Crime fiction', 300, 27),
('B03', 'Dune', 'P03', 'Literary fiction', 195, 93),
('B04', 'Harry Potter and the Sorcerers Stone', 'P03', 'Fantasy Fiction', 297, 190),
('B05', '1984', 'P04', 'Dystopian', 150.00, 35),
('B06', 'To Kill a Mockingbird', 'P05', 'Literary fiction', 120.00, 50),
('B07', 'The Catcher in the Rye', 'P06', 'Literary fiction', 90.00, 20),
('B08', 'Brave New World', 'P04', 'Dystopian', 140.00, 15),
('B09', 'The Hobbit', 'P07', 'The Hobbit', 200.00, 40),
('B10', 'Fahrenheit 451', 'P06', 'Dystopian', 130.00, 10),
('B11', 'The Alchemist', 'P08', 'Philosophical', 110.00, 25);

create table Publisher(
Publisher_ID varchar(50) not null,
Publisher_name varchar(50),
Book_ID varchar(50) not null,
primary key(Publisher_ID),

select* from publisher;
insert into publisher values
('P01', ' Scribner', 'B01'),
('P02', ' knop', 'B02'),
('P03', 'Chilton Books', 'B03'),
('P04', 'Secker & Warburg', 'B05'),
('P05', 'J.B. Lippincott & Co.', 'B06'),
('P06', 'Little, Brown and Company', 'B07');

###3 create table Members
create table Members(
Member_ID varchar(50) not null,
Book_ID  varchar(50) not null,
Member_Name varchar(100),
Email varchar (100) unique,
Contact_Number int(50),
Address varchar(100)  ,
primary key(Member_ID),
foreign key(Book_ID) references Books(Book_ID)
);
INSERT INTO Members (Member_ID, Book_ID, Member_Name, Email, Contact_Number, Address) VALUES
('M02', 'B02', 'Grace Tom', 'grace@hotmail.com', 6943, 'Oak St, Metropolis'),
('M03', 'B07', 'Jackson Adison', 'jakson@outlook.com', 64995, 'Bukit Jalil'),
('M04', 'B02', 'Alex Freberg', 'alex@hotmail.com', 4454, 'One South'),
('M05', 'B05', 'Susan Jim', 'su132@hotmail.com', 9424, 'Z residence'),
('M06', 'B01', 'Richard Tom', 'ri445@hotmail.com', 9856, 'Cameron'),
('M07', 'B04','Emily Carter', 'emily.carter@example.com', 5567, 'Elm St, Gotham'),
('M08', 'B04', 'Daniel Wright', 'daniel.wright@example.com', 568, 'Maple Ave, Metropolis'),
('M09', 'B05','Sophie Liu', 'sophie.liu@example.com', 559, 'Cedar Blvd, Smallville'),
('M10', 'B03','Michael Brown', 'michael.brown@example.com', 590, 'Pine St, Cyber Jaya'),
('M11', 'B02','Olivia Green', 'olivia.green@example.com', 5501, 'Oak Rd, South City'),
('M12', 'B10','James Smith', 'james.smith@example.com', 868, 'Birch St, Bukit Jalil');
select* from members;
INSERT INTO Members (Member_ID, Book_ID, Member_Name, Email, Contact_Number, Address) VALUES
('M01', 'B02', 'Alice John', 'alice@example.com', '624586', 'Main St SpringField'),
('M02', 'B02', 'Grace Tom', 'grace@hotmail.com', '69843', 'Oak St, Metropolis'),
('M03', 'B07', 'Jackson Adison', 'jakson@outlook.com', '64995', 'Bukit Jalil'),
('M04', 'B02', 'Alex Freberg', 'alex@hotmail.com', '447654', 'One South'),
('M05', 'B05', 'Susan Jim', 'su132@hotmail.com', '98424', 'Z residence'),
('M06', 'B01', 'Richard Tom', 'ri445@hotmail.com', '776597', 'Cameron'),
('M07', 'B04', 'Emily Carter', 'emily.carter@example.com', '555567', 'Elm St, Gotham'),
('M08', 'B04', 'Daniel Wright', 'daniel.wright@example.com', '553678', 'Maple Ave, Metropolis'),
('M09', 'B05', 'Sophie Liu', 'sophie.liu@example.com', '555489', 'Cedar Blvd, Smallville'),
('M10', 'B03', 'Michael Brown', 'michael.brown@example.com', '95888773', 'South City'),
('M11', 'B10', 'James Smith', 'james.smith@example.com', '845868', 'Birch St, Bukit Jalil'),
('M12', 'B02', 'Olivia Green', 'olivia.green@example.com', '55601', 'Oak Rd, Jalil');

select* from members;

ALTER TABLE Members
MODIFY Member_ID VARCHAR(50);


INSERT INTO Members VALUES
('M01', 'B02', 'Alice John', 'alice@example.com', 98765, 'Main St SpringField');
('M02', 'B02', 'Grace Tom', 'grace@hotmail.com', 6543, 'Oak St, Metropolis'),
('M03', 'B07', 'Jackson Adison', 'jakson@outlook.com', 6495, 'Bukit Jalil'),
('M04', 'B02', 'Alex Freberg', 'alex@hotmail.com', 6345, 'One South'),
('M05', 'B05', 'Susan Jim', 'su132@hotmail.com', 984324, 'Z residence'),
('M06', 'B01', 'Richard Tom', 'ri445@hotmail.com', 77697, 'Cameron'),
('M07', 'B04','Emily Carter', 'emily.carter@example.com', 534567, 'Elm St, Gotham'),
('M08','B04', 'Daniel Wright', 'daniel.wright@example.com', 5678, 'Maple Ave, Metropolis'),
('M09', 'B05','Sophie Liu', 'sophie.liu@example.com', 5589, 'Cedar Blvd, Smallville'),
('M10', 'B03','Michael Brown', 'michael.brown@example.com', 57890, 'Pine St, Cyber Jaya'),
('M11', 'B02','Olivia Green', 'olivia.green@example.com', 556901, 'Oak Rd, South City'),
('M12', 'B10','James Smith', 'james.smith@example.com', 56712, 'Birch St, Bukit Jalil');

create table Orders(
Order_ID varchar(50) not null unique,
Book_ID varchar(50),
Member_ID varchar(50) not null,
Order_date datetime,
Quantity int,
Status varchar(50),
primary key(Order_ID),
foreign key(Book_ID) references Books(Book_ID),
foreign key(Member_ID) references Members(Member_ID)
);





insert into Orders values
('D02', 'B02', 'M04', '2024-07-20', 7, 'delivered' ),
('D03', 'B01', 'M06', '2024-07-29', 3, 'delivered' ),
('D04', 'B02', 'M04', '2024-08-22', 5, 'Not delivered'),
('D05', 'B03', 'M02', '2024-09-25', 5, 'Not Delivered'),
('D06', 'B11', 'M04', '2024-09-23',1, 'delivered'),
('D07', 'B08', 'M04', '2024-09-8', 3, 'delivered'),
('D08', 'B09', 'M02', '2024-08-25', 6, 'delivered'),
('D09', 'B03', 'M02', '2024-06-25', 8, 'Not Delivered'),
('D10', 'B03', 'M02', '2024-04-25', 1, 'Not Delivered');

select* from orders;
CREATE TABLE Shopping_Cart (
    Cart_ID INT(50) NOT NULL,
    Member_ID VARCHAR(50) NOT NULL,
    Book_ID VARCHAR(50),
    Create_Date date,
    Quantity INT,
    PRIMARY KEY (Cart_ID),
    FOREIGN KEY (Member_ID) REFERENCES Members(Member_ID),
    FOREIGN KEY (Book_ID) REFERENCES Books(Book_ID)
);
insert into Shopping_Cart values
(2, 'M05', 'B05', '2024-09-15', 2),
(3, 'M09', 'B05', '2024-05-20', 1),
(4, 'M10', 'B03', '2024-07-01', 7),
(5, 'M06', 'B01', '2024-09-03', 3),
(6, 'M11', 'B02', '2024-03-29', 5);

select* from Shopping_Cart;

### create table reviews

CREATE TABLE Reviews (
    Review_ID INT AUTO_INCREMENT NOT NULL,
    Book_ID VARCHAR(50) NOT NULL,
    Member_ID VARCHAR(50) NOT NULL,
    Rating INT CHECK (Rating >= 1 AND Rating <= 10),
    Review_Text TEXT,
    Review_Date DATETIME DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (Review_ID),
    FOREIGN KEY (Book_ID) REFERENCES Books(Book_ID),
    FOREIGN KEY (Member_ID) REFERENCES Members(Member_ID)
);

INSERT INTO Reviews (Book_ID, Member_ID, Rating, Review_Text) VALUES
('B01', 'M01', 10, 'An incredible read! Highly recommend.'),
('B02', 'M02', 6, 'Great story but a bit slow at times.'),
('B03', 'M03', 8, 'Amazing world-building and characters.'),
('B04', 'M04', 3, 'Enjoyable, but not as good as the others.'),
('B07', 'M04', 7, 'great one!!.'),
('B08', 'M04', 10, 'AMAAZING'),
('B03', 'M04', 2, 'not bad.');
select* from Reviews;

CREATE TABLE order_to_publisher (
    order_ID VARCHAR(50) NOT NULL,
    Publisher_ID VARCHAR(50) NOT NULL,
    order_date DATETIME,
    quantity INT,
    status VARCHAR(50),
    PRIMARY KEY (order_ID),
    FOREIGN KEY (Publisher_ID) REFERENCES Publisher(Publisher_ID)
);

INSERT INTO order_to_publisher (order_ID, Publisher_ID, order_date, quantity, status) VALUES
('O01', 'P01', '2024-08-01', 5, 'delivered'),
('O02', 'P02', '2024-09-15', 10, 'pending'),
('O03', 'P03', '2024-10-05', 7, 'not delivered'),
('O04', 'P04', '2024-10-01', 3, 'delivered'),
('O05', 'P05', '2024-10-07', 4, 'pending'),
('O06', 'P06', '2024-10-10', 2, 'delivered'),
('O07', 'P01', '2024-08-01', 5, 'delivered'),
('O08', 'P02', '2024-09-15', 10, 'pending'),
('O09', 'P02', '2024-10-05', 7, 'not delivered'),
('O10', 'P02', '2024-10-01', 3, 'delivered'),
('O11', 'P02', '2024-10-07', 4, 'pending'),
('O12', 'P06', '2024-10-10', 2, 'delivered');
select* from order_to_publisher;

SELECT B.Book_ID, 
    B.Title, 
    COUNT(R.Review_ID) AS Total_Feedback
FROM 
    Books B
LEFT JOIN 
    Reviews R ON B.Book_ID = R.Book_ID
GROUP BY 
    B.Book_ID, B.Title;
    
    SELECT 
    M.Member_ID, 
    M.Member_Name, 
    COUNT(R.Review_ID) AS Total_Feedback
FROM 
    Members M
LEFT JOIN 
    Reviews R ON M.Member_ID = R.Member_ID
GROUP BY 
    M.Member_ID, M.Member_Name;


SELECT 
    P.Publisher_ID, 
    P.Publisher_name, 
    COUNT(B.Book_ID) AS Number_of_Books
FROM 
    Publisher P
LEFT JOIN 
    Books B ON P.Publisher_ID = B.Publisher_ID
GROUP BY 
    P.Publisher_ID, P.Publisher_name;
    
      ### 	Find the total number of book for each genre. 
    SELECT 
    Genre, 
    COUNT(Book_ID) AS Total_Books
FROM 
    Books
GROUP BY 
    Genre;
    
    
    ###	From the book table, list the books where quantity is more than the average quantity of all books.
SELECT * 
FROM 
    Books
WHERE 
    Quantity > (SELECT AVG(Quantity) FROM Books);
    
    select count(quantity) as 'total number of books' from order_to_publisher
 where status= 'delivered';
 
 
 SELECT 
    M.Member_ID, 
    M.Member_Name
FROM 
    Members M
LEFT JOIN 
    Orders O ON M.Member_ID = O.Member_ID
WHERE 
    O.Order_ID IS NULL;
    
     ### Find the Genres of the Book Which Has the Most Number of Quantity in Stock
SELECT 
    Genre, Book_ID, Quantity
FROM 
    Books
WHERE 
    Quantity = (SELECT MAX(Quantity) FROM Books);
    
 ## List of Purchased Books That Have Not Been Delivered to Members
   
    SELECT 
    M.Member_ID, M.Address, M.Contact_Number, O.Book_ID,
    B.Title AS Book_Title, O.Quantity,
    O.Order_date AS Order_Date,
    O.Status
FROM 
    Orders O
JOIN 
    Members M ON O.Member_ID = M.Member_ID
JOIN 
    Books B ON O.Book_ID = B.Book_ID
WHERE 
    O.Status = 'Not Delivered';
    
    
     ### Show the Members Who Made More Than 2 Orders
    SELECT 
    M.Member_ID, M.Member_Name, 
    COUNT(O.Order_ID) AS Total_Orders
FROM 
    Members M
JOIN 
    Orders O ON M.Member_ID = O.Member_ID
GROUP BY 
    M.Member_ID, M.Member_Name
HAVING 
    COUNT(O.Order_ID) > 2;



    