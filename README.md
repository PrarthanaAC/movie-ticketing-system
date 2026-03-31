# Movie Ticketing System — Relational Database Design

## Project Overview
A relational database system modelled on real-world online movie 
ticketing platforms such as BookMyShow. This project demonstrates 
end-to-end database design — from schema creation and data insertion 
to complex SQL queries, stored procedures, triggers, and window 
functions.

## Business Problem
Design a database backend that handles the complete movie ticketing 
workflow — user registration, movie browsing, seat selection, booking, 
payment processing, and ticket generation — across multiple cities, 
theaters, and screens.

## Database Schema — 9 Tables

| Table | Description |
|---|---|
| Users | Registered user details |
| Movies | Movie information and ratings |
| Theaters | Theater locations by city |
| Screens | Screens within each theater |
| Showtimes | Movie schedules per screen |
| Seats | Seat inventory per screen |
| Bookings | Booking records per user |
| Payments | Payment details per booking |
| Tickets | Final ticket generation |

## SQL Concepts Demonstrated

- DDL: CREATE, ALTER, DROP
- DML: INSERT, UPDATE, DELETE, SELECT
- Joins: INNER JOIN, LEFT JOIN across multiple tables
- Subqueries and nested queries
- GROUP BY, HAVING, ORDER BY with aggregations
- Stored Procedures for modular booking logic
- Triggers for data validation and audit logging
- Window Functions: RANK(), ROW_NUMBER(), DENSE_RANK()
- Aggregate functions: COUNT, SUM, AVG, MAX, MIN

## Sample Business Queries Included

- Total bookings and revenue per movie
- Most popular theaters by booking count
- Seat availability check for a specific show
- Top 5 highest-rated movies with booking count
- Monthly revenue trend by theater
- Users with most bookings in last 30 days
- Ranked movies by revenue using window functions

## Tools & Technologies

- MySQL / MySQL Workbench
- SQL — DDL, DML, Advanced Queries
- Stored Procedures & Triggers
- Window Functions

## How To Run

1. Open MySQL Workbench or any MySQL client
2. Run 01_create_tables.sql to create the database schema
3. Run 02_insert_data.sql to populate sample data
4. Run 03_queries.sql to execute analysis queries
5. Run 04_stored_procedures_triggers.sql for procedures and triggers

## Author
Prarthana A Charankar
Data & SQL Analyst | Ex-TCS
LinkedIn: linkedin.com/in/prarthanac
```
