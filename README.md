# Cairo Metro Database System

A relational database that models the Cairo Metro network — 
lines, stations, interchange connections, and passenger trips.

## Schema
5 tables: lines, stations, line_station, fares, trips

Interchange stations are handled via composite keys in 
line_station, since a station can belong to multiple lines.

## Optimizations
- Indexes on station name and trip date for faster lookups
- A view (live_trips_report) for readable trip logs

## Usage
1. Run schema.sql to create the database
2. Use queries.sql for analysis

**Developer:** Kurollos Talat | Helwan University