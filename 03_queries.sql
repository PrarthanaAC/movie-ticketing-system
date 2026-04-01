# 6. SQL QUERIES
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Below is the list of SQL queries for each concept category based on the Movie Booking System database. 

-------------------------------------------------------
# 6.1 CRUD OPERATIONS (SELECT, INSERT, UPDATE, DELETE)
-------------------------------------------------------
USE prarthana;

# 6.1.1 SELECT – List all users who have made a booking
--------------------------------------------------------
-- Shows only users who have at least one booking

SELECT DISTINCT U.UserID, U.Name
FROM Users U
JOIN Bookings B ON U.UserID = B.UserID;

# 6.1.2 INSERT – Add a new user
-------------------------------
-- Adds a new user record to the Users table

INSERT INTO Users (Name, Email, Phone)
VALUES ('Kavya', 'kavya@example.com', '9876543210');

# 6.1.3 UPDATE – Change user’s email
-------------------------------------
-- Updates the email for user with ID 1

UPDATE Users
SET Email = 'newemail@example.com'
WHERE UserID = 1;

# 6.1.4 DELETE – Cancel a booking
----------------------------------
-- Deletes booking with ID 10

DELETE FROM Bookings WHERE BookingID = 10;

SELECT * FROM users;

----------------------
# 6.2 JOIN OPERATIONS
----------------------
USE prarthana;

# 6.2.1 Movie + Theater + Show Details
---------------------------------------

SELECT M.Title, T.TheaterName, S.ShowDate, S.ShowTime
FROM Showtimes S
JOIN Movies M ON S.MovieID = M.MovieID
JOIN Screens SC ON S.ScreenID = SC.ScreenID
JOIN Theaters T ON SC.TheaterID = T.TheaterID;

# 6.2.2 Booked Seat Numbers for Show
-------------------------------------

SELECT Seats.SeatNumber
FROM Tickets
JOIN Seats ON Tickets.SeatID = Seats.SeatID
WHERE ShowTimeID = 2;

# 6.2.3 All Ticket Info with User Name
---------------------------------------

SELECT U.Name, M.Title, T.TheaterName, Seats.SeatNumber
FROM Tickets
JOIN Bookings B ON Tickets.BookingID = B.BookingID
JOIN Users U ON B.UserID = U.UserID
JOIN Showtimes ST ON Tickets.ShowTimeID = ST.ShowTimeID
JOIN Movies M ON ST.MovieID = M.MovieID
JOIN Screens SC ON ST.ScreenID = SC.ScreenID
JOIN Theaters T ON SC.TheaterID = T.TheaterID
JOIN Seats ON Tickets.SeatID = Seats.SeatID;

# 6.2.4 Show Showtimes with Theater & Screen
---------------------------------------------

SELECT M.Title, T.TheaterName, SC.ScreenName, ST.ShowDate, ST.ShowTime
FROM Showtimes ST
JOIN Movies M ON ST.MovieID = M.MovieID
JOIN Screens SC ON ST.ScreenID = SC.ScreenID
JOIN Theaters T ON SC.TheaterID = T.TheaterID;

-------------------------
# 6.3. GROUP BY + HAVING
-------------------------
USE prarthana;

# 6.3.1 Total Bookings per Movie
---------------------------------

SELECT M.Title, COUNT(*) AS TotalBookings
FROM Bookings B
JOIN Showtimes ST ON B.ShowTimeID = ST.ShowTimeID
JOIN Movies M ON ST.MovieID = M.MovieID
GROUP BY M.Title;

# 6.3.2 Total Bookings by City
-------------------------------

SELECT T.City, COUNT(*) AS TotalBookings
FROM Bookings B
JOIN Showtimes ST ON B.ShowTimeID = ST.ShowTimeID
JOIN Screens SC ON ST.ScreenID = SC.ScreenID
JOIN Theaters T ON SC.TheaterID = T.TheaterID
GROUP BY T.City;

# 6.3.3 Movies with atleast 1 Booking
--------------------------------------

SELECT M.Title, COUNT(*) AS Bookings
FROM Showtimes ST
JOIN Movies M ON ST.MovieID = M.MovieID
JOIN Bookings B ON ST.ShowTimeID = B.ShowTimeID
GROUP BY M.Title
HAVING COUNT(*) >= 1;

# 6.3.4 Bookings Grouped by Date
---------------------------------

SELECT BookingDate, COUNT(*) AS TotalBookings
FROM Bookings
GROUP BY BookingDate
ORDER BY BookingDate DESC;

-----------------------------------
# 6.4 AGGREGATE & FUNCTION QUERIES
-----------------------------------
USE prarthana;

# 6.4.1 Total Revenue
----------------------

SELECT SUM(Amount) AS TotalRevenue FROM Payments;

# 6.4.2 Average Rating per Genre
---------------------------------

SELECT Genre, AVG(Rating) AS AvgRating
FROM Movies
GROUP BY Genre;

# 6.4.3 Maximum Booking Amount
-------------------------------

SELECT MAX(Amount) AS MaxAmount FROM Payments;

# 6.4.4 Count of Seats per Screen
----------------------------------

SELECT ScreenID, COUNT(*) AS TotalSeats
FROM Seats
GROUP BY ScreenID;

-----------------------------
# 6.5. DATE & TIME FUNCTIONS
-----------------------------
USE prarthana;

# 6.5.1 Bookings in Last 7 Days 
--------------------------------

SELECT * FROM Bookings
WHERE BookingDate >= CURDATE() - INTERVAL 7 DAY;

# all the inputs are of 2024 so inserting 2 records to execute above query
INSERT INTO Bookings (BookingID, UserID, ShowTimeID, BookingDate)
VALUES (1001, 1, 1, CURDATE());

INSERT INTO Bookings (BookingID, UserID, ShowTimeID, BookingDate)
VALUES (1002, 2, 2, CURDATE());

# 6.5.2 Showtimes Scheduled for Today
--------------------------------------

SELECT * FROM Showtimes
WHERE ShowDate = CURDATE();

# 6.5.3 Movies Scheduled This Month
------------------------------------

SELECT DISTINCT M.Title
FROM Movies M
JOIN Showtimes ST ON M.MovieID = ST.MovieID
WHERE MONTH(ShowDate) = MONTH(CURDATE());

# 6.5.4 Days Between Booking and Payment
-----------------------------------------

SELECT B.BookingID, DATEDIFF(P.PaymentDate, B.BookingDate) AS DaysToPay
FROM Bookings B
JOIN Payments P ON B.BookingID = P.BookingID;
