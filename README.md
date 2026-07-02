# metro-data-analytics

Cairo Metro Database System
This project was developed to model the Greater Cairo Metro network, focusing on organizing lines, stations, and passenger trip data efficiently using SQL.

 Project Overview
The primary goal of this database is to track the metro network structure and log passenger activity. It allows for:

Managing metro lines and their specific color-coded identities.

Handling interchange stations seamlessly using composite keys.

Calculating fares based on stop-count differences.

 Schema Design
The database consists of 5 core tables:

lines: Stores line names and map colors.

stations: Contains station names and types (normal/interchange).

line_station: Maps stations to lines with their sequence order.

Fares: A lookup table for pricing brackets.

trips: Records passenger trips with start and end points.

You can view the full entity relationship diagram here: diagram.png.

 Key Features & Optimizations
Performance: Created indexes like search_namestation and search_trip_date to speed up daily lookups.

Readability: Designed a view named live_trips_report to join raw trip data into human-readable logs instantly.

 How to Use
Clone this repository.

Open the schema.sql file to recreate the database structure.

Use the queries.sql file to run analysis and populate the network data.

Developed by: Kurollos Talat Shaker Zaka
University: Helwan University, Faculty of Science, Department of Statistics and Computer Science
