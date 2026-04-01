------------------------
# 6.6 STORED PROCEDURES
------------------------
USE prarthana;

# 6.6.1 Get Showtimes by Movie
-------------------------------
-- CHECK STORED PROCEDURE SECTION FOR THE PROCEDURE - GetShowtimesByMovie

CREATE DEFINER=`root`@`localhost` PROCEDURE `GetShowtimesByMovie`(IN mid INT)
BEGIN
  SELECT M.Title, S.ShowDate, S.ShowTime, T.TheaterName, SC.ScreenName
  FROM Showtimes S
  JOIN Movies M ON S.MovieID = M.MovieID
  JOIN Screens SC ON S.ScreenID = SC.ScreenID
  JOIN Theaters T ON SC.TheaterID = T.TheaterID
  WHERE M.MovieID = mid;
END


# 6.6.2 Call the Procedure
---------------------------

CALL GetShowtimesByMovie(1);

--------------
# 6.7 TRIGGERS
--------------
USE prarthana;

# 6.7.1 Log Booking Insert
---------------------------

DELIMITER //
CREATE TRIGGER LogBookingInsert
AFTER INSERT ON Bookings
FOR EACH ROW
BEGIN
  INSERT INTO BookingLogs(BookingID, LogDateTime)
  VALUES (NEW.BookingID, NOW());
END //
DELIMITER ;

# 6.7.2 Log Payment Updates
----------------------------

DELIMITER //
CREATE TRIGGER LogPaymentUpdate
AFTER UPDATE ON Payments
FOR EACH ROW
BEGIN
  INSERT INTO BookingLogs(BookingID, LogDateTime)
  VALUES (NEW.BookingID, NOW());
END //
DELIMITER ;

----------------------
# 6.8 WINDOW FUNCTIONS
----------------------
USE prarthana;

# 6.8.1 Rank Movies by Genre
-----------------------------

SELECT Title, Genre, Rating,
       RANK() OVER (PARTITION BY Genre ORDER BY Rating DESC) AS GenreRank
FROM Movies;

# 6.8.2 Running Total of Payments
----------------------------------

SELECT BookingID, Amount,
       SUM(Amount) OVER (ORDER BY PaymentDate) AS RunningTotal
FROM Payments;

# 6.8.3 Booking Count Per User
-------------------------------

SELECT UserID, BookingID,
       COUNT(*) OVER (PARTITION BY UserID) AS UserBookingCount
FROM Bookings;

# 6.8.4 Show Max Payment Per City
----------------------------------

SELECT T.City, P.Amount,
       MAX(P.Amount) OVER (PARTITION BY T.City) AS MaxCityPayment
FROM Payments P
JOIN Bookings B ON P.BookingID = B.BookingID
JOIN Showtimes ST ON B.ShowTimeID = ST.ShowTimeID
JOIN Screens SC ON ST.ScreenID = SC.ScreenID
JOIN Theaters T ON SC.TheaterID = T.TheaterID;

-----------------
# 6.9 SUBQUERIES
-----------------
# 6.9.1 Movies With Above Average Rating
-----------------------------------------

SELECT Title, Rating FROM Movies
WHERE Rating > (SELECT AVG(Rating) FROM Movies);

# 6.9.2 Theaters with More Than 1 Screen
-----------------------------------------

SELECT TheaterID, TheaterName
FROM Theaters
WHERE TheaterID IN (
  SELECT TheaterID
  FROM Screens
  GROUP BY TheaterID
  HAVING COUNT(*) > 1
);

# 6.9.3 Users with Highest Booking Count
-----------------------------------------

SELECT Name FROM Users
WHERE UserID IN (
  SELECT UserID
  FROM Bookings
  GROUP BY UserID
  HAVING COUNT(*) = (
    SELECT MAX(cnt)
    FROM (
      SELECT COUNT(*) AS cnt
      FROM Bookings
      GROUP BY UserID
    ) AS counts
  )
);

# 6.9.4 Find Users Who Booked Movies With Above-Average Ratings
----------------------------------------------------------------

SELECT DISTINCT u.UserID, u.Name
FROM Users u
JOIN Bookings b ON u.UserID = b.UserID
JOIN Showtimes s ON b.ShowTimeID = s.ShowTimeID
JOIN Movies m ON s.MovieID = m.MovieID
WHERE m.Rating > (
  SELECT AVG(Rating) FROM Movies
);
