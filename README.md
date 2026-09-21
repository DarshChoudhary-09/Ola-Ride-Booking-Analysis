# Title
Ola Ride Booking Analysis — Excel, SQL & Power BI.

## Project Objective
Explain the goal: analyze 100K+ Ola ride bookings to understand booking success/cancellation patterns, revenue, vehicle performance, and customer/driver satisfaction — moving from raw, messy data to a clean, query-ready dataset and an interactive dashboard.

## Dataset Used
- 103,024 ride bookings (July 2024)
- 21 columns: Booking ID, Status, Customer ID, Vehicle Type, Pickup/Drop Location, Booking Value, Payment Method, Ride Distance,              Driver/Customer Ratings, Cancellation reasons, etc.
- Note it started as a raw Excel export before cleaning.
- <a href=  "https://github.com/DarshChoudhary-09/Ola-Ride-Booking-Analysis/blob/main/Bookings-100000-Rows.csv"> Dataset </a>

## Data Cleaning Process
Two-stage cleaning — this is worth calling out since it shows range of tools:

- Excel: removed duplicate records, handled blank/inconsistent entries, standardized formatting.
- SQL: further organized and structured the data into a bookings table inside a dedicated Ola database for querying.

## SQL Analysis (Questions Answered)
List your 10 actual queries as business questions — this doubles as your KPI list:

1. All successful bookings
2. Average ride distance per vehicle type
3. Total rides canceled by customers
4. Top 5 customers by ride count
5. Rides canceled by drivers (personal/car issues)
6. Max/min driver ratings for Prime Sedan
7. Rides paid via UPI
8. Average customer rating per vehicle type
9. Total booking value of successful rides
10.Incomplete rides with reasons
- SQL <a href="https://github.com/DarshChoudhary-09/Ola-Ride-Booking-Analysis/blob/main/Ola%20SQL.sql">SQL Query</a>

## Dashboard
Describe your 5-page Power BI report structure, e.g.:
- Dashboard Interaction <a href="https://github.com/DarshChoudhary-09/Ola-Ride-Booking-Analysis/blob/main/Ola%20Project.pbix">View dashboard</a>

- Overview page (trend line, status breakdown, KPI cards)
- Vehicle type breakdown
- Revenue/payment analysis
- Ratings analysis
- Detailed table/drill-down view
- <img width="887" height="499" alt="Screenshot 2026-09-22 012001" src="https://github.com/DarshChoudhary-09/Ola-Ride-Booking-Analysis/blob/main/Screenshot%202026-09-22%20012001.png" />


## Project Insights
Real findings you can use directly:

- 63,967 of 103,024 bookings (62%) completed successfully; 18,434 canceled by drivers, 10,499 by customers, 10,124 "driver not found"
- Total revenue from successful rides: ₹3.51 Crore
- Cash (35,022) and UPI (25,881) dominate payments; Credit/Debit Card usage is minimal
- Average ride distance ~14.2 km; Prime Sedan has the longest average trips (15.76 km)
- Average driver rating 3.99/5, average customer rating 4.00/5 — closely matched
- Top driver-side cancellation reason: personal/car-related issues (6,542 rides); top customer-side reason: driver not moving toward pickup (3,175 rides).

## Tools Used
MS Excel · MySQL/SQL · Power BI Desktop · DAX.



