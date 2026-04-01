## CREATE DATABASE
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE DATABASE prarthana;

USE prarthana;

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## CREATE TABLES
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# Lets create all the necessary tables for Movie Booking System

-----------------
# 1. USERS Table
-----------------
CREATE TABLE Users (
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(15),
    Gender VARCHAR(10),
    CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP
);

SELECT * FROM Users;

------------------
# 2. MOVIES Table
------------------
CREATE TABLE Movies (
    MovieID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(100),
    Genre VARCHAR(50),
    Language VARCHAR(30),
    Duration INT, -- in minutes
    Rating DECIMAL(3,1),
    ReleaseDate DATE
);

SELECT * FROM Movies;

--------------------
# 3. THEATERS Table
--------------------
CREATE TABLE Theaters (
    TheaterID INT AUTO_INCREMENT PRIMARY KEY,
    TheaterName VARCHAR(100),
    City VARCHAR(50),
    Address TEXT
);

SELECT * FROM Theaters;

-------------------
# 4. SCREENS Table
-------------------
CREATE TABLE Screens (
    ScreenID INT AUTO_INCREMENT PRIMARY KEY,
    ScreenName VARCHAR(50),
    TheaterID INT,
    Capacity INT,
    FOREIGN KEY (TheaterID) REFERENCES Theaters(TheaterID)
);

SELECT * FROM Screens;

---------------------
# 5. SHOWTIMES Table
---------------------
CREATE TABLE Showtimes (
    ShowTimeID INT AUTO_INCREMENT PRIMARY KEY,
    MovieID INT,
    ScreenID INT,
    ShowDate DATE,
    ShowTime TIME,
    FOREIGN KEY (MovieID) REFERENCES Movies(MovieID),
    FOREIGN KEY (ScreenID) REFERENCES Screens(ScreenID)
);

SELECT * FROM Showtimes;

-----------------
# 6. SEATS Table
-----------------
CREATE TABLE Seats (
    SeatID INT AUTO_INCREMENT PRIMARY KEY,
    ScreenID INT,
    SeatNumber VARCHAR(10),
    SeatType VARCHAR(20), -- e.g., Regular, Premium
    FOREIGN KEY (ScreenID) REFERENCES Screens(ScreenID)
);

SELECT * FROM Seats;

--------------------
# 7. BOOKINGS Table
--------------------
CREATE TABLE Bookings (
    BookingID INT AUTO_INCREMENT PRIMARY KEY,
    UserID INT,
    ShowTimeID INT,
    BookingDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (ShowTimeID) REFERENCES Showtimes(ShowTimeID)
);

SELECT * FROM Bookings;

--------------------
# 8. PAYMENTS Table
--------------------
CREATE TABLE Payments (
    PaymentID INT AUTO_INCREMENT PRIMARY KEY,
    BookingID INT,
    Amount DECIMAL(10,2),
    PaymentDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    PaymentMethod VARCHAR(30),
    FOREIGN KEY (BookingID) REFERENCES Bookings(BookingID)
);

SELECT * FROM Payments;

-------------------
# 9. TICKETS Table
-------------------
CREATE TABLE Tickets (
    TicketID INT AUTO_INCREMENT PRIMARY KEY,
    BookingID INT,
    ShowTimeID INT,
    SeatID INT,
    TicketStatus VARCHAR(20) DEFAULT 'Booked',
    FOREIGN KEY (BookingID) REFERENCES Bookings(BookingID),
    FOREIGN KEY (ShowTimeID) REFERENCES Showtimes(ShowTimeID),
    FOREIGN KEY (SeatID) REFERENCES Seats(SeatID)
);

SELECT * FROM Tickets;

------------------------
# 10. BOOKINGLOGS Table
------------------------
CREATE TABLE BookingLogs (
    LogID INT AUTO_INCREMENT PRIMARY KEY,
    BookingID INT,
    LogDateTime DATETIME
);

SELECT * FROM BookingLogs;

SHOW TABLES;
