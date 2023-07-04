-- To create database--
create database Book;

-- to create table--
create table Book.Books(
title varchar(30),
author varchar(30),
genre varchar(30),
publication_year int primary key,
price int 
);

-- to create new table to store information about authours--
create table Book.author(
titles varchar(30),
author_1 varchar(30),
publication_year int ,
prices int primary key,
foreign key(publication_year)references Book.Books(publication_year)
);

-- To insert the values to the table--
insert into Book.Books values('Macbeth','William Shakespeare','Poetry',1875,300);
insert into Book.Books values('Miss marple','Agatha christie','Adventure',1973,350);
insert into Book.Books values('The green mile','Stephen King','Magical',1970,400);
insert into Book.Books values('Winter Fairy','Kristy','Fiction',2005,250);
insert into Book.Books values('cinderella','Charles perrault','History',2006,450);
select*from Book.Books;

-- to insert the value to the table 2--
insert into Book.author values('Macbeth','William Shakespeare',1875,350);
insert into Book.author values('Miss marple','Agatha christie',1973,375);
insert into Book.author values('The green mile','Stephen King',1970,450);
insert into Book.author values('Winter Fairy','Kristy',2005,350);
insert into Book.author values('cinderella','Charles perrault',2006,250);
select*from Book.author;


-- To retrieve book based on its title--
select*from Book.Books;

-- Retrieve the details of a book based on its title--
select*from book.books where title='The green mile';

-- to update price of book--
update Book.Books set price='275' where publication_year='2005';

-- to delete a book in the tables--
delete from Book.Books where publication_year='1875';

-- to calculate avg of the book price--
select avg(price) from Book.Books;

-- perform a query to retrieve books along with their respective authors--
select books.title,author.author_1 from book.books
join book.author
on book.books.publication_year=book.author.publication_year;
