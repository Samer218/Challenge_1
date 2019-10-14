-- Student id: 102571951
-- Name: Samer Abu-Ali

--Task 1
Tour (TourName, Descriptions)
Primary Key (TourName)

Events (EventYear, EventMonth, EventDay, Fee, TourName)
Primary Key (EventYear, EventMonth, EventDay)
Foreign Key (TourName) references Tour

Booking (CYMDID, DateBooked, Payment, EventYear, EventMonth, EventDay, ClientID)
Primary Key(CYMDID)
Foreign Key (EventYear, EventMonth, EventDay) references Events
Foreign Key (ClientID) references Client

Client (ClientID, Surname, GivenName, Gender)
Primary Key(ClientID)

-- Task 1 Completed

--Task 2
DROP TABLE IF EXISTS Tour;
DROP TABLE IF EXISTS Events;
DROP TABLE IF EXISTS Client;
DROP TABLE IF EXISTS Booking;

Create Table Tour (
TourName NVARCHAR(100)  
, Descriptions NVARCHAR(500)
Primary Key (TourName)
);

Create Table Events (
TYMDID NVARCHAR(200) 
, EventYear INT 
, EventMonth NVARCHAR(3)
, EventDay INT
, Fee MONEY
, TourName NVARCHAR(100)
Primary Key (TYMDID)
Foreign Key (TourName) references Tour
);

Create Table Client (
ClientID INT Primary Key
, Surname NVARCHAR(100) 
, GivenName NVARCHAR(100) 
, Gender NVARCHAR(1) 
);

Create Table Booking (
CYMDID NVARCHAR(300) Primary Key
, DateBooked DATE
, Payment MONEY
, TYMDID NVARCHAR(200) Foreign Key (TYMDID) references Events
, ClientID INT Foreign Key (ClientID) references Client
);

--Task 2 Completed

--Task 3

DROP TABLE IF EXISTS Tour;
DROP TABLE IF EXISTS Events;
DROP TABLE IF EXISTS Client;
DROP TABLE IF EXISTS Booking;

Create Table Tour (
TourName NVARCHAR(100)  
, Descriptions NVARCHAR(500)
Primary Key (TourName)
); 

INSERT INTO Tour (TourName, Descriptions) values ('North', 'Tour of wineries and outlets of the Bedigo and Castlemaine region')
INSERT INTO Tour (TourName, Descriptions) values ('South', 'Tour of wineries and outlets of Mornington Penisula')
INSERT INTO Tour (TourName, Descriptions) values ('West', 'Tour of wineries and outlets of the Geelong and Otways region')

Create Table Events (
TYMDID NVARCHAR(200) 
, EventYear INT 
, EventMonth NVARCHAR(3)
, EventDay INT
, Fee MONEY
, TourName NVARCHAR(100)
Primary Key (TYMDID)
Foreign Key (TourName) references Tour
);

INSERT INTO Events (TYMDID, TourName, EventMonth, EventDay, EventYear, Fee) values ('NJ916', 'North', 'Jan', 9, 2016, 200)
INSERT INTO Events (TYMDID, TourName, EventMonth, EventDay, EventYear, Fee) values ('NF1316', 'North', 'Feb', 13, 2016, 225)
INSERT INTO Events (TYMDID, TourName, EventMonth, EventDay, EventYear, Fee) values ('SJ916', 'South', 'Jan', 9, 2016, 200)
INSERT INTO Events (TYMDID, TourName, EventMonth, EventDay, EventYear, Fee) values ('SJ1616', 'South', 'Jan', 16, 2016, 200)
INSERT INTO Events (TYMDID, TourName, EventMonth, EventDay, EventYear, Fee) values ('WJ2916', 'West', 'Jan', 29, 2016, 225)


Create Table Client (
ClientID INT Primary Key
, Surname NVARCHAR(100) 
, GivenName NVARCHAR(100) 
, Gender NVARCHAR(1) 
);

INSERT INTO Client (ClientID, Surname, GivenName, Gender) values (1, 'Price', 'Taylor', 'M')
INSERT INTO Client (ClientID, Surname, GivenName, Gender) values (2, 'Gamble', 'Ellyse', 'F')
INSERT INTO Client (ClientID, Surname, GivenName, Gender) values (3, 'Tan', 'Tilly', 'F')
INSERT INTO Client (ClientID, Surname, GivenName, Gender) values (102571951, 'Abu-Ali', 'Samer', 'M')

Create Table Booking (
CYMDID NVARCHAR(300) Primary Key
, DateBooked NVARCHAR(100)
, Payment MONEY
, TYMDID NVARCHAR(200) Foreign Key (TYMDID) references Events
, ClientID INT Foreign Key (ClientID) references Client
);

INSERT INTO Booking (CYMDID, DateBooked, Payment, TYMDID, ClientID) values ('1NJ916', '10/12/2015', 200, 'NJ916', 1)
INSERT INTO Booking (CYMDID, DateBooked, Payment, TYMDID, ClientID) values ('2NJ916', '16/12/2015', 200, 'NJ916', 2)
INSERT INTO Booking (CYMDID, DateBooked, Payment, TYMDID, ClientID) values ('1NF1316', '8/01/2016', 225, 'NF1316', 1)
INSERT INTO Booking (CYMDID, DateBooked, Payment, TYMDID, ClientID) values ('2NF1316', '14/01/2016', 125, 'NF1316', 2)
INSERT INTO Booking (CYMDID, DateBooked, Payment, TYMDID, ClientID) values ('3NF1316', '3/02/2016', 225, 'NF1316', 3)
INSERT INTO Booking (CYMDID, DateBooked, Payment, TYMDID, ClientID) values ('1SJ916', '10/12/2015', 200, 'SJ916', 1)
INSERT INTO Booking (CYMDID, DateBooked, Payment, TYMDID, ClientID) values ('2SJ1616', '18/12/2015', 200, 'SJ1616', 2)
INSERT INTO Booking (CYMDID, DateBooked, Payment, TYMDID, ClientID) values ('3SJ1616', '9/01/2016', 200, 'SJ1616', 3)
INSERT INTO Booking (CYMDID, DateBooked, Payment, TYMDID, ClientID) values ('2WJ2916', '17/12/2015', 225, 'WJ2916', 2)
INSERT INTO Booking (CYMDID, DateBooked, Payment, TYMDID, ClientID) values ('3WJ2916', '18/12/2015', 225, 'WJ2916', 3)
INSERT INTO Booking (CYMDID, DateBooked, Payment, TYMDID, ClientID) values ('10WJ2916', '10/12/2015', 225, 'WJ2916', 102571951)
INSERT INTO Booking (CYMDID, DateBooked, Payment, TYMDID, ClientID) values ('10SJ1616', '18/12/2015', 200, 'SJ1616', 102571951)
INSERT INTO Booking (CYMDID, DateBooked, Payment, TYMDID, ClientID) values ('10NJ916', '16/12/2015', 200, 'NJ916', 102571951)

--Task 3 completed

--Task 4 

--Query 1: works but doesn't show any data 
SELECT C.GivenName, C.Surname, T.TourName, T.Descriptions, E.EventYear, E.EventMonth, E.EventDay, E.Fee, B.DateBooked, B.Payment
From Client C
INNER JOIN Tour T
on C.ClientID = T.TourName
INNER JOIN  Events E
on T.TourName = E.TYMDID
INNER JOIN Booking B
on E.TYMDID = B.CYMDID

--Query 2 
SELECT T.TourName, E.EventMonth, count()
FROM Tour T
INNER JOIN Events E
on T.TourName = E.TourName



