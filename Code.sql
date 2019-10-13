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
