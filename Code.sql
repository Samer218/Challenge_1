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
