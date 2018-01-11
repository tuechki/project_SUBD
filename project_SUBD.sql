DROP DATABASE IF EXISTS project_SUBD;
CREATE DATABASE project_SUBD;
USE project_SUBD;

create table Businesses(
	Id integer auto_increment primary key not null,
    Name varchar(100) not null,
    Image longblob,
    Summary varchar(255),
    Email varchar(55)
    
);

    
create table Locations(
	Id integer auto_increment primary key not null,
    BusinessId integer not null,
    Address varchar(255) not null,
    Number varchar(15),
    Image longblob,
    Summary varchar(255),
    Email varchar(55)
);

    
create table Services (
	Id integer primary key not null auto_increment,
    BusinessId integer not null,
    Image longblob,
    Summary varchar(255),
    TimeDuration integer not null,
    Price integer
);



create table Users(
	Id integer not null primary key auto_increment,
    Username varchar(55) not null,
    Password varchar(55) not null,
    FirstName varchar(55) not null,
    LastName varchar(55) not null,
    Number varchar(55),
    Gender varchar(10),
    DateOfBirth date,
    Image longblob
    
);


create table LocationsServices(
	LocationId integer not null,
    UserId integer not null
);

create table UsersBusinesses(
	UserId integer not null,
    BusinessId integer not null,
    Permission integer not null
    
);


/* The beginning of rest for the location or the user would be set as EndHour*/
/* And the end of the rest would be again BeginHour for the location or the user */ 
create table WorkingTime(
	Id integer not null primary key auto_increment,
    LocationId integer,	
    UserId integer,
    DayOfWeek integer not null,
    BeginHour time not null,
    EndHour time not null
);













