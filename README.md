# Movie Ticketing System — Relational Database Design

## Project Overview
This project is a relational database system modeled on a real-world online movie ticketing platform such as BookMyShow. It demonstrates end-to-end database design, including schema creation, data insertion, and advanced SQL-based analysis.

The system simulates the complete backend workflow of a movie booking platform, covering users, movies, theaters, screens, bookings, payments, and ticket generation.

---

## Business Objective
To design a scalable and structured database system that supports:

- User registration and management  
- Movie listing and scheduling  
- Seat selection and booking  
- Payment processing  
- Ticket generation  

The system is designed to handle operations across multiple cities, theaters, and screens.

---

## Database Architecture

The database consists of the following interconnected tables:

- Users       : Stores registered user details  
- Movies      : Contains movie information and ratings  
- Theaters    : Stores theater and location details  
- Screens     : Represents screens within each theater  
- Showtimes   : Manages movie schedules per screen  
- Seats       : Defines seat availability per screen  
- Bookings    : Tracks booking records per user  
- Payments    : Stores payment details for each booking  
- Tickets     : Generates tickets per booking  

All tables are connected using primary and foreign keys to maintain referential integrity.

---

## Key Features

- Designed a normalized relational database schema  
- Established relationships between multiple entities  
- Implemented end-to-end booking workflow logic  
- Performed complex queries using joins and subqueries  
- Applied aggregation for business insights  
- Built stored procedures for modular operations  
- Implemented triggers for validation and logging  
- Used window functions for advanced analysis  

---

## SQL Concepts Demonstrated

- DDL: CREATE, ALTER, DROP  
- DML: INSERT, UPDATE, DELETE, SELECT  
- Joins: INNER JOIN, LEFT JOIN  
- Subqueries and nested queries  
- GROUP BY, HAVING, ORDER BY  
- Aggregate functions: COUNT, SUM, AVG, MAX, MIN  
- Stored Procedures  
- Triggers  
- Window Functions: RANK(), ROW_NUMBER(), DENSE_RANK()  

---

## Business Analysis

The project includes analytical queries to derive insights such as:

- Total revenue generated per movie  
- Most popular movies based on booking volume  
- Theater-wise booking performance  
- Peak booking time identification  
- Monthly revenue trends  
- Top customers based on booking frequency  
- Ranking movies based on revenue  

---

## Tools and Technologies

- SQL (MySQL)  
- MySQL Workbench  

---

## How to Run

1. Open MySQL Workbench or any SQL client  
2. Execute 01_create_tables.sql to create the database schema  
3. Execute 02_insert_data.sql to populate sample data  
4. Execute 03_queries.sql to run analysis queries  
5. Execute 04_stored_procedures_triggers.sql for procedures and triggers  

---

## Outcome

This project demonstrates the ability to design a real-world transactional database system, write complex SQL queries, and generate meaningful insights from structured data.

---

## Author

Prarthana A Charankar  
Data & SQL Analyst | Ex-TCS  

LinkedIn: https://www.linkedin.com/in/prarthanac
