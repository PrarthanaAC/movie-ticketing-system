## INSERT DATA INTO TABLES 
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# Lets insert data into each table

-------------------------------------
# 1. Insert Records into Users Table
-------------------------------------

-- I did not specify UserID because it's set to AUTO_INCREMENT, so it will be generated automatically.
-- CreatedAt defaults to CURRENT_TIMESTAMP, so we didn't need to specify it either.

INSERT INTO Users (Name, Email, Phone, Gender)
VALUES 
('Aarav Mehta', 'aarav@example.com', '9876543210', 'Male'),
('Sanya Sharma', 'sanya@example.com', '8765432109', 'Female'),
('Rahul Khanna', 'rahul.k@example.com', '9988776655', 'Male'),
('Meera Iyer', 'meera.iyer@example.com', '9123456780', 'Female'),
('Karan Patel', 'karan.p@example.com', '9988771122', 'Male'),
('Diya Nair', 'diya.nair@example.com', '9001122334', 'Female'),
('Arjun Verma', 'arjun.v@example.com', '9090909090', 'Male'),
('Ishita Roy', 'ishita.r@example.com', '9123412341', 'Female'),
('Vikram Rao', 'vikram.rao@example.com', '9900990099', 'Male'),
('Nikita Joshi', 'nikita.j@example.com', '8811223344', 'Female'),
('Rohit Deshmukh', 'rohit.d@example.com', '9700700700', 'Male'),
('Sneha Kapoor', 'sneha.kapoor@example.com', '9678901234', 'Female'),
('Manav Sethi', 'manav.sethi@example.com', '9555512345', 'Male'),
('Aishwarya Pillai', 'aishwarya.p@example.com', '9099988877', 'Female'),
('Kabir Singh', 'kabir.singh@example.com', '9876512345', 'Male'),
('Tanvi Jain', 'tanvi.jain@example.com', '9812312345', 'Female'),
('Yash Malhotra', 'yash.m@example.com', '9111122233', 'Male'),
('Neha Dubey', 'neha.d@example.com', '9012345678', 'Female'),
('Dev Thakur', 'dev.thakur@example.com', '9321654987', 'Male'),
('Riya Sen', 'riya.sen@example.com', '9898989898', 'Female');

--------------------------------------
# 2. Insert Records into Movies Table
--------------------------------------

-- MovieID is auto-generated (AUTO_INCREMENT) so it’s not explicitly inserted.
-- Title, Genre, Language, Duration, ReleaseDate, and Rating cover diverse, real-world data.
-- Genres include Action, Sci-Fi, Thriller, Comedy, Biography, Drama, Horror, and Animation to support complex queries (like filtering, grouping, etc.).
-- Languages include English, Hindi, Telugu, Kannada, Korean to demonstrate diverse records for analysis.

INSERT INTO Movies (Title, Genre, Language, Duration, ReleaseDate, Rating)
VALUES
('Inception', 'Sci-Fi', 'English', 148, '2010-07-16', 8.8),
('3 Idiots', 'Comedy', 'Hindi', 170, '2009-12-25', 8.4),
('Interstellar', 'Sci-Fi', 'English', 169, '2014-11-07', 8.6),
('Baahubali: The Beginning', 'Action', 'Telugu', 159, '2015-07-10', 8.0),
('Dangal', 'Biography', 'Hindi', 161, '2016-12-23', 8.4),
('The Dark Knight', 'Action', 'English', 152, '2008-07-18', 9.0),
('KGF Chapter 1', 'Action', 'Kannada', 156, '2018-12-21', 8.2),
('Avengers: Endgame', 'Action', 'English', 181, '2019-04-26', 8.4),
('Zindagi Na Milegi Dobara', 'Drama', 'Hindi', 153, '2011-07-15', 8.2),
('Parasite', 'Thriller', 'Korean', 132, '2019-05-30', 8.6),
('Drishyam', 'Thriller', 'Hindi', 163, '2015-07-31', 8.2),
('Coco', 'Animation', 'English', 105, '2017-11-22', 8.4),
('Pushpa: The Rise', 'Action', 'Telugu', 179, '2021-12-17', 7.6),
('Andhadhun', 'Thriller', 'Hindi', 139, '2018-10-05', 8.3),
('RRR', 'Action', 'Telugu', 182, '2022-03-25', 8.0),
('The Matrix', 'Sci-Fi', 'English', 136, '1999-03-31', 8.7),
('Queen', 'Drama', 'Hindi', 146, '2014-03-07', 8.2),
('Tumbbad', 'Horror', 'Hindi', 104, '2018-10-12', 8.3),
('Spider-Man: No Way Home', 'Action', 'English', 148, '2021-12-17', 8.3),
('Super 30', 'Biography', 'Hindi', 155, '2019-07-12', 7.9);

----------------------------------------
# 3. Insert Records into Theaters Table
----------------------------------------

-- TheaterID is AUTO_INCREMENT so no need to insert manually.
-- TheaterName includes popular multiplex chains like PVR, INOX, Cinepolis, Carnival.
-- City includes a mix of metro and tier-2 cities: Mumbai, Delhi, Bangalore, Hyderabad, Kolkata, Pune, Kochi, etc.
-- These records help in writing JOIN, FILTER, and GROUP BY queries across locations.

INSERT INTO Theaters (TheaterName, City)
VALUES
('INOX Nehru Place', 'Delhi'),
('PVR Phoenix', 'Mumbai'),
('Cinepolis Forum Mall', 'Bangalore'),
('Carnival Cinemas', 'Hyderabad'),
('INOX South City', 'Kolkata'),
('PVR Orion Mall', 'Bangalore'),
('INOX Quest Mall', 'Kolkata'),
('PVR Select Citywalk', 'Delhi'),
('Cinepolis Seasons Mall', 'Pune'),
('PVR Lulu Mall', 'Kochi'),
('PVR Elante Mall', 'Chandigarh'),
('INOX R City Mall', 'Mumbai'),
('Carnival CineSquare', 'Chennai'),
('Cinepolis Ambience Mall', 'Gurgaon'),
('PVR East End Mall', 'Lucknow'),
('INOX VR Mall', 'Chennai'),
('PVR Market City', 'Pune'),
('Cinepolis DB Mall', 'Bhopal'),
('PVR Riverside Mall', 'Ahmedabad'),
('INOX GVK One', 'Hyderabad');

---------------------------------------
# 4. Insert Records into Screens Table
---------------------------------------

-- ScreenName: A variety of naming conventions for realism (e.g., “Audi”, “Platinum”, “Deluxe”).
-- TheaterID: Matches your earlier 20 inserted theaters.
-- Capacity: Simulates realistic seat capacities per screen (ranging from 60 to 200).
-- You don’t need to mention ScreenID because it’s auto-incremented.

INSERT INTO Screens (ScreenName, TheaterID, Capacity) VALUES
('Screen 1', 1, 120),
('Screen 2', 1, 150),
('Screen 1', 2, 100),
('Screen 2', 2, 130),
('Audi 1', 3, 200),
('Audi 2', 3, 180),
('Screen A', 4, 160),
('Screen B', 4, 140),
('Platinum 1', 5, 90),
('Deluxe 2', 5, 100),
('Screen 3', 6, 110),
('Gold Class', 7, 60),
('Screen X', 8, 170),
('Main Audi', 9, 200),
('Screen Deluxe', 10, 120),
('Premier 1', 11, 150),
('Screen Z', 12, 160),
('Auditorium 2', 13, 190),
('Audi Plus', 14, 175),
('Cinehall 1', 15, 140);

-----------------------------------------
# 5. Insert Records into Showtimes Table
-----------------------------------------

-- Assuming: You already have Movies with MovieID values from 1 to 20 , You already have Screens with ScreenID values from 1 to 20
-- MovieID links each showtime to a specific movie.
-- ScreenID links it to a particular screen (which belongs to a theater).
-- ShowDate: Spread over 10 days (2025-06-01 to 2025-06-10).
-- ShowTime: Simulates popular movie timings like matinee, evening, night shows.
-- Ensures each record is valid and normalized via foreign key constraints.

INSERT INTO Showtimes (MovieID, ScreenID, ShowDate, ShowTime) VALUES
(1, 1, '2025-06-01', '18:00:00'),
(2, 2, '2025-06-01', '21:00:00'),
(3, 3, '2025-06-02', '17:30:00'),
(4, 4, '2025-06-02', '20:00:00'),
(5, 5, '2025-06-03', '19:00:00'),
(6, 6, '2025-06-03', '16:00:00'),
(7, 7, '2025-06-04', '21:15:00'),
(8, 8, '2025-06-04', '14:00:00'),
(9, 9, '2025-06-05', '18:30:00'),
(10, 10, '2025-06-05', '15:00:00'),
(11, 11, '2025-06-06', '19:45:00'),
(12, 12, '2025-06-06', '22:15:00'),
(13, 13, '2025-06-07', '13:00:00'),
(14, 14, '2025-06-07', '16:30:00'),
(15, 15, '2025-06-08', '20:00:00'),
(16, 16, '2025-06-08', '17:00:00'),
(17, 17, '2025-06-09', '21:30:00'),
(18, 18, '2025-06-09', '18:00:00'),
(19, 19, '2025-06-10', '15:30:00'),
(20, 20, '2025-06-10', '19:30:00');

-------------------------------------
# 6. Insert Records into Seats Table
-------------------------------------

-- Assuming ScreenID values exist from 1 to 10 and seat types are realistic for a movie hall:
-- ScreenID links each seat to a specific screen in the theater.
-- SeatNumber mimics standard row-wise seat numbering.
-- SeatType shows diversity: Regular, Premium, Recliner for realistic seat classifications.
-- This data helps support pricing differences, seat selection logic, and UI grouping in real-world apps.

INSERT INTO Seats (ScreenID, SeatNumber, SeatType) VALUES
(1, 'A1', 'Regular'),
(1, 'A2', 'Regular'),
(1, 'A3', 'Premium'),
(2, 'B1', 'Regular'),
(2, 'B2', 'Premium'),
(2, 'B3', 'Recliner'),
(3, 'C1', 'Regular'),
(3, 'C2', 'Regular'),
(3, 'C3', 'Premium'),
(4, 'D1', 'Recliner'),
(4, 'D2', 'Premium'),
(4, 'D3', 'Regular'),
(5, 'E1', 'Regular'),
(5, 'E2', 'Premium'),
(6, 'F1', 'Recliner'),
(6, 'F2', 'Recliner'),
(7, 'G1', 'Premium'),
(7, 'G2', 'Regular'),
(8, 'H1', 'Regular'),
(9, 'I1', 'Premium');

----------------------------------------
# 7. Insert Records into Bookings Table
----------------------------------------

-- We'll use hypothetical UserID values from 1 to 10 and ShowTimeID values from 1 to 10, randomly distributed:
-- UserID connects each booking to a user.
-- ShowTimeID links the booking to a specific movie show.
-- BookingDate records the date of the booking (not the show date).
-- This table is critical for joining with Tickets and Payments for real-world flow management.

INSERT INTO Bookings (UserID, ShowTimeID, BookingDate) VALUES
(1, 1, '2024-05-01'),
(2, 2, '2024-05-02'),
(3, 3, '2024-05-03'),
(4, 4, '2024-05-04'),
(5, 5, '2024-05-05'),
(6, 6, '2024-05-06'),
(7, 7, '2024-05-07'),
(8, 8, '2024-05-08'),
(9, 9, '2024-05-09'),
(10, 10, '2024-05-10'),
(1, 2, '2024-05-11'),
(2, 3, '2024-05-12'),
(3, 4, '2024-05-13'),
(4, 5, '2024-05-14'),
(5, 6, '2024-05-15'),
(6, 7, '2024-05-16'),
(7, 8, '2024-05-17'),
(8, 9, '2024-05-18'),
(9, 10, '2024-05-19'),
(10, 1, '2024-05-20');

----------------------------------------
# 8. Insert Records into Payments Table
----------------------------------------

-- Assuming you have BookingID values from 1 to 20:
-- BookingID is a foreign key mapping to the Bookings table.
-- Amount simulates payment values for ticket bookings.
-- PaymentDate indicates the date when payment was made.
-- PaymentMethod introduces variety, covering common digital payment modes.
-- This structure supports financial reporting, refunds, and analytics by method or date.

INSERT INTO Payments (BookingID, Amount, PaymentDate, PaymentMethod) VALUES
(1, 350.00, '2024-05-01', 'UPI'),
(2, 420.00, '2024-05-02', 'CreditCard'),
(3, 300.00, '2024-05-03', 'Wallet'),
(4, 500.00, '2024-05-04', 'NetBanking'),
(5, 280.00, '2024-05-05', 'UPI'),
(6, 600.00, '2024-05-06', 'CreditCard'),
(7, 320.00, '2024-05-07', 'Wallet'),
(8, 450.00, '2024-05-08', 'UPI'),
(9, 390.00, '2024-05-09', 'NetBanking'),
(10, 310.00, '2024-05-10', 'CreditCard'),
(11, 370.00, '2024-05-11', 'Wallet'),
(12, 430.00, '2024-05-12', 'UPI'),
(13, 350.00, '2024-05-13', 'CreditCard'),
(14, 520.00, '2024-05-14', 'NetBanking'),
(15, 410.00, '2024-05-15', 'Wallet'),
(16, 390.00, '2024-05-16', 'UPI'),
(17, 600.00, '2024-05-17', 'CreditCard'),
(18, 340.00, '2024-05-18', 'Wallet'),
(19, 280.00, '2024-05-19', 'UPI'),
(20, 560.00, '2024-05-20', 'NetBanking');

---------------------------------------
# 9. Insert Records into Tickets Table
---------------------------------------

-- We’ll assume that BookingID, ShowTimeID, and SeatID values are valid and consistent (e.g., BookingID 1-20, ShowTimeID 1-10, SeatID 1-20):
-- BookingID associates the ticket with the booking made by the user.
-- ShowTimeID ensures the ticket is tied to the correct show.
-- SeatID specifies the exact seat reserved in the show.
-- This table links the booking, showtime, and seat, completing the ticket purchase.

INSERT INTO Tickets (BookingID, ShowTimeID, SeatID) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 1, 11),
(12, 2, 12),
(13, 3, 13),
(14, 4, 14),
(15, 5, 15),
(16, 6, 16),
(17, 7, 17),
(18, 8, 18),
(19, 9, 19),
(20, 10, 20);

-------------------------------------------
# 10. Insert Records into BookingLogs Table
-------------------------------------------

-- Assuming you have BookingID values from 1 to 20 and logging timestamps around recent dates:
-- BookingID corresponds to the booking for which the log entry is created.
-- LogDateTime captures the exact timestamp when the booking was inserted (or logged).
-- This table supports audit and tracking of booking activity for troubleshooting or monitoring.

INSERT INTO BookingLogs (BookingID, LogDateTime) VALUES
(1, '2024-05-01 10:15:00'),
(2, '2024-05-01 10:20:00'),
(3, '2024-05-01 10:25:00'),
(4, '2024-05-01 10:30:00'),
(5, '2024-05-01 10:35:00'),
(6, '2024-05-02 11:00:00'),
(7, '2024-05-02 11:05:00'),
(8, '2024-05-02 11:10:00'),
(9, '2024-05-02 11:15:00'),
(10, '2024-05-02 11:20:00'),
(11, '2024-05-03 12:00:00'),
(12, '2024-05-03 12:05:00'),
(13, '2024-05-03 12:10:00'),
(14, '2024-05-03 12:15:00'),
(15, '2024-05-03 12:20:00'),
(16, '2024-05-04 09:00:00'),
(17, '2024-05-04 09:05:00'),
(18, '2024-05-04 09:10:00'),
(19, '2024-05-04 09:15:00'),
(20, '2024-05-04 09:20:00');
