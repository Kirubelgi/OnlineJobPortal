create Database JobPortal
use JobPortal 

create table Contact(
ContactId int primary key identity(1,1) not null,
Name varchar(50),
Email varchar(50),
Subject varchar(100),
Message varchar(Max)
)

create table Country(
CountryId int primary key identity(1,1),
CountryName varchar(50)
)

Insert into Country values ('Ethiopia')
Insert into Country values ('United States')
Insert into Country values ('Kenya')
Insert into Country values ('Canada')
Insert into Country values ('china')
Insert into Country values ('Jaban')
Insert into Country values ('India')
Insert into Country values ('Eritrea')
Insert into Country values ('Germany')
Insert into Country values ('South Africa')
Insert into Country values ('Egypt')
Insert into Country values ('Australia')
Insert into Country values ('Nigeria')
Insert into Country values ('Somalia')
Insert into Country values ('Sudan')

create table [User](
UserId int primary key identity(1,1),
Username varchar(50),
Password varchar(50),
Name varchar(50),
Email varchar(50),
Phone varchar(50),
TenthGrade varchar(50),
TwelfthGrade varchar(50),
GraduationGrade varchar(50),
PostGraduationGrade varchar(50),
Phd varchar(50),
WorksOn varchar(50),
Experience varchar(50),
Resume varchar(50),
Address varchar(Max),
Country varchar(50)
)

Alter table [User]
add unique (Username)
