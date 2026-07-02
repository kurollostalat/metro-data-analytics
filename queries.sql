-- In this SQL file, write (and comment!) the typical SQL queries users will run on your database
--INCERTING THE THREE LINES:
INSERT INTO "lines"("name","color_line")
VALUES ('Line 1', 'Red'),
('Line 2', 'Blue'),
('Line 3', 'Green');

-- INCERTING ALL STATUIONS :

INSERT INTO "stations"("name","type")
VALUES
-- Line 1 Stations
('New El-Marg', 'normal'),
('El-Marg', 'normal'),
('Ezbet El-Nakhl', 'normal'),
('Ain Shams', 'normal'),
('El-Matareya', 'normal'),
('Helmeyat El-Zaytoun', 'normal'),
('Hadayek El-Zaytoun', 'normal'),
('Saray El-Koba', 'normal'),
('Hammamat El-Koba', 'normal'),
('Kobri El-Koba', 'normal'),
('Manshiet El-Sadr', 'normal'),
('El-Demerdash', 'normal'),
('Ghamra', 'normal'),
('Al-Shohadaa', 'interchange'), -- Interchange Line 1 & 2
('Ahmed Orabi', 'normal'),
('Gamal Abdel Nasser', 'interchange'), -- Interchange Line 1 & 3
('Sadat', 'interchange'), -- Interchange Line 1 & 2
('Saad Zaghloul', 'normal'),
('Sayeda Zeinab', 'normal'),
('El-Malek El-Saleh', 'normal'),
('Mar Girgis', 'normal'),
('El-Zahraa', 'normal'),
('Dar El-Salam', 'normal'),
('Hadayek El-Maadi', 'normal'),
('El-Maadi', 'normal'),
('Thakanat El-Maadi', 'normal'),
('Tora El-Balad', 'normal'),
('Kozzika', 'normal'),
('Tora El-Asmant', 'normal'),
('El-Maasara', 'normal'),
('Hadayek Helwan', 'normal'),
('Wadi Hof', 'normal'),
('Helwan University', 'normal'),
('Ain Helwan', 'normal'),
('Helwan', 'normal'),

-- Line 2 Stations (Excluding Duplicates)
('Shubra El-Kheima', 'normal'),
('Koleyet El-Zeraa', 'normal'),
('El-Mazallat', 'normal'),
('El-Khalafawy', 'normal'),
('St. Teresa', 'normal'),
('Rod El-Farag', 'normal'),
('Massara', 'normal'),
('Attaba', 'interchange'), -- Interchange Line 2 & 3
('Mohamed Naguib', 'normal'),
('Opera', 'normal'),
('Dokki', 'normal'),
('El-Bohouth', 'normal'),
('Cairo University', 'interchange'), -- Interchange Line 2 & 3
('Faisal', 'normal'),
('Giza', 'normal'),
('Omm El-Misryeen', 'normal'),
('Sakiat Mekki', 'normal'),
('El-Mounib', 'normal'),

-- Line 3 Stations (Excluding Duplicates)
('Adly Mansour', 'normal'),
('El-Haykestep', 'normal'),
('Omar Ibn El-Khattab', 'normal'),
('Qobaa', 'normal'),
('Hesham Barakat', 'normal'),
('El-Nozha', 'normal'),
('El-Shams Club', 'normal'),
('Alf Maskan', 'normal'),
('Heliopolis Square', 'normal'),
('Haroun', 'normal'),
('El-Ahram', 'normal'),
('Koleyet El-Banat', 'normal'),
('Cairo Stadium', 'normal'),
('Fair Zone', 'normal'),
('El-Abassiya', 'normal'),
('Abdou Pasha', 'normal'),
('El-Geish', 'normal'),
('Bab El-Shaariya', 'normal'),
('Maspero', 'normal'),
('Safaa Hegazy', 'normal'),
('Kit Kat', 'normal'),
('Sudan', 'normal'),
('Imbaba', 'normal'),
('El-Bohy', 'normal'),
('El-Qawmeya El-Arabiya', 'normal'),
('Ring Road', 'normal'),
('Rod El-Farag Corridor', 'normal'),
('El-Tawfikiya', 'normal'),
('Wadi El-Nil', 'normal'),
('Gamal Abdel Nasser League', 'normal'),
('Boulaq El-Dakrour', 'normal');

--INSERTING ON LINE_STATION:

-- Line 1 Sequence (id = 1)

INSERT INTO "line_station" ("line_id", "station_id", "sequence") VALUES
(1, (SELECT "id" FROM "stations" WHERE "name" = 'New El-Marg'), 1),
(1, (SELECT "id" FROM "stations" WHERE "name" = 'El-Marg'), 2),
(1, (SELECT "id" FROM "stations" WHERE "name" = 'Ezbet El-Nakhl'), 3),
(1, (SELECT "id" FROM "stations" WHERE "name" = 'Ain Shams'), 4),
(1, (SELECT "id" FROM "stations" WHERE "name" = 'El-Matareya'), 5),
(1, (SELECT "id" FROM "stations" WHERE "name" = 'Helmeyat El-Zaytoun'), 6),
(1, (SELECT "id" FROM "stations" WHERE "name" = 'Hadayek El-Zaytoun'), 7),
(1, (SELECT "id" FROM "stations" WHERE "name" = 'Saray El-Koba'), 8),
(1, (SELECT "id" FROM "stations" WHERE "name" = 'Hammamat El-Koba'), 9),
(1, (SELECT "id" FROM "stations" WHERE "name" = 'Kobri El-Koba'), 10),
(1, (SELECT "id" FROM "stations" WHERE "name" = 'Manshiet El-Sadr'), 11),
(1, (SELECT "id" FROM "stations" WHERE "name" = 'El-Demerdash'), 12),
(1, (SELECT "id" FROM "stations" WHERE "name" = 'Ghamra'), 13),
(1, (SELECT "id" FROM "stations" WHERE "name" = 'Al-Shohadaa'), 14),
(1, (SELECT "id" FROM "stations" WHERE "name" = 'Ahmed Orabi'), 15),
(1, (SELECT "id" FROM "stations" WHERE "name" = 'Gamal Abdel Nasser'), 16),
(1, (SELECT "id" FROM "stations" WHERE "name" = 'Sadat'), 17),
(1, (SELECT "id" FROM "stations" WHERE "name" = 'Saad Zaghloul'), 18),
(1, (SELECT "id" FROM "stations" WHERE "name" = 'Sayeda Zeinab'), 19),
(1, (SELECT "id" FROM "stations" WHERE "name" = 'El-Malek El-Saleh'), 20),
(1, (SELECT "id" FROM "stations" WHERE "name" = 'Mar Girgis'), 21),
(1, (SELECT "id" FROM "stations" WHERE "name" = 'El-Zahraa'), 22),
(1, (SELECT "id" FROM "stations" WHERE "name" = 'Dar El-Salam'), 23),
(1, (SELECT "id" FROM "stations" WHERE "name" = 'Hadayek El-Maadi'), 24),
(1, (SELECT "id" FROM "stations" WHERE "name" = 'El-Maadi'), 25),
(1, (SELECT "id" FROM "stations" WHERE "name" = 'Thakanat El-Maadi'), 26),
(1, (SELECT "id" FROM "stations" WHERE "name" = 'Tora El-Balad'), 27),
(1, (SELECT "id" FROM "stations" WHERE "name" = 'Kozzika'), 28),
(1, (SELECT "id" FROM "stations" WHERE "name" = 'Tora El-Asmant'), 29),
(1, (SELECT "id" FROM "stations" WHERE "name" = 'El-Maasara'), 30),
(1, (SELECT "id" FROM "stations" WHERE "name" = 'Hadayek Helwan'), 31),
(1, (SELECT "id" FROM "stations" WHERE "name" = 'Wadi Hof'), 32),
(1, (SELECT "id" FROM "stations" WHERE "name" = 'Helwan University'), 33),
(1, (SELECT "id" FROM "stations" WHERE "name" = 'Ain Helwan'), 34),
(1, (SELECT "id" FROM "stations" WHERE "name" = 'Helwan'), 35);

-- Line 2 Sequence (id = 2)

INSERT INTO "line_station" ("line_id", "station_id", "sequence") VALUES
(2, (SELECT "id" FROM "stations" WHERE "name" = 'Shubra El-Kheima'), 1),
(2, (SELECT "id" FROM "stations" WHERE "name" = 'Koleyet El-Zeraa'), 2),
(2, (SELECT "id" FROM "stations" WHERE "name" = 'El-Mazallat'), 3),
(2, (SELECT "id" FROM "stations" WHERE "name" = 'El-Khalafawy'), 4),
(2, (SELECT "id" FROM "stations" WHERE "name" = 'St. Teresa'), 5),
(2, (SELECT "id" FROM "stations" WHERE "name" = 'Rod El-Farag'), 6),
(2, (SELECT "id" FROM "stations" WHERE "name" = 'Massara'), 7),
(2, (SELECT "id" FROM "stations" WHERE "name" = 'Al-Shohadaa'), 8),
(2, (SELECT "id" FROM "stations" WHERE "name" = 'Attaba'), 9),
(2, (SELECT "id" FROM "stations" WHERE "name" = 'Mohamed Naguib'), 10),
(2, (SELECT "id" FROM "stations" WHERE "name" = 'Sadat'), 11),
(2, (SELECT "id" FROM "stations" WHERE "name" = 'Opera'), 12),
(2, (SELECT "id" FROM "stations" WHERE "name" = 'Dokki'), 13),
(2, (SELECT "id" FROM "stations" WHERE "name" = 'El-Bohouth'), 14),
(2, (SELECT "id" FROM "stations" WHERE "name" = 'Cairo University'), 15),
(2, (SELECT "id" FROM "stations" WHERE "name" = 'Faisal'), 16),
(2, (SELECT "id" FROM "stations" WHERE "name" = 'Giza'), 17),
(2, (SELECT "id" FROM "stations" WHERE "name" = 'Omm El-Misryeen'), 18),
(2, (SELECT "id" FROM "stations" WHERE "name" = 'Sakiat Mekki'), 19),
(2, (SELECT "id" FROM "stations" WHERE "name" = 'El-Mounib'), 20);

-- Line 3 Sequence (id = 3)

INSERT INTO "line_station" ("line_id", "station_id", "sequence") VALUES
(3, (SELECT "id" FROM "stations" WHERE "name" = 'Adly Mansour'), 1),
(3, (SELECT "id" FROM "stations" WHERE "name" = 'El-Haykestep'), 2),
(3, (SELECT "id" FROM "stations" WHERE "name" = 'Omar Ibn El-Khattab'), 3),
(3, (SELECT "id" FROM "stations" WHERE "name" = 'Qobaa'), 4),
(3, (SELECT "id" FROM "stations" WHERE "name" = 'Hesham Barakat'), 5),
(3, (SELECT "id" FROM "stations" WHERE "name" = 'El-Nozha'), 6),
(3, (SELECT "id" FROM "stations" WHERE "name" = 'El-Shams Club'), 7),
(3, (SELECT "id" FROM "stations" WHERE "name" = 'Alf Maskan'), 8),
(3, (SELECT "id" FROM "stations" WHERE "name" = 'Heliopolis Square'), 9),
(3, (SELECT "id" FROM "stations" WHERE "name" = 'Haroun'), 10),
(3, (SELECT "id" FROM "stations" WHERE "name" = 'El-Ahram'), 11),
(3, (SELECT "id" FROM "stations" WHERE "name" = 'Koleyet El-Banat'), 12),
(3, (SELECT "id" FROM "stations" WHERE "name" = 'Cairo Stadium'), 13),
(3, (SELECT "id" FROM "stations" WHERE "name" = 'Fair Zone'), 14),
(3, (SELECT "id" FROM "stations" WHERE "name" = 'El-Abassiya'), 15),
(3, (SELECT "id" FROM "stations" WHERE "name" = 'Abdou Pasha'), 16),
(3, (SELECT "id" FROM "stations" WHERE "name" = 'El-Geish'), 17),
(3, (SELECT "id" FROM "stations" WHERE "name" = 'Bab El-Shaariya'), 18),
(3, (SELECT "id" FROM "stations" WHERE "name" = 'Attaba'), 19),
(3, (SELECT "id" FROM "stations" WHERE "name" = 'Gamal Abdel Nasser'), 20),
(3, (SELECT "id" FROM "stations" WHERE "name" = 'Maspero'), 21),
(3, (SELECT "id" FROM "stations" WHERE "name" = 'Safaa Hegazy'), 22),
(3, (SELECT "id" FROM "stations" WHERE "name" = 'Kit Kat'), 23),

-- Rod El-Farag Branch

(3, (SELECT "id" FROM "stations" WHERE "name" = 'Sudan'), 24),
(3, (SELECT "id" FROM "stations" WHERE "name" = 'Imbaba'), 25),
(3, (SELECT "id" FROM "stations" WHERE "name" = 'El-Bohy'), 26),
(3, (SELECT "id" FROM "stations" WHERE "name" = 'El-Qawmeya El-Arabiya'), 27),
(3, (SELECT "id" FROM "stations" WHERE "name" = 'Ring Road'), 28),
(3, (SELECT "id" FROM "stations" WHERE "name" = 'Rod El-Farag Corridor'), 29),

-- Cairo University Branch

(3, (SELECT "id" FROM "stations" WHERE "name" = 'El-Tawfikiya'), 30),
(3, (SELECT "id" FROM "stations" WHERE "name" = 'Wadi El-Nil'), 31),
(3, (SELECT "id" FROM "stations" WHERE "name" = 'Gamal Abdel Nasser League'), 32),
(3, (SELECT "id" FROM "stations" WHERE "name" = 'Boulaq El-Dakrour'), 33),
(3, (SELECT "id" FROM "stations" WHERE "name" = 'Cairo University'), 34);

-- INSERTION ON FARES TABLE

INSERT INTO "fares" ("min_stops", "max_stops", "price") VALUES
(1, 9, 10),
(10, 16, 12),
(17, 23, 15),
(24, 100, 20);

--Question :

-- Question 1: How many total stations are currently operating in the entire metro network?

SELECT COUNT(*) AS "TOTAL STATIONS IN METRO NETWORK" FROM "stations";

-- Question 2: Which line color corresponds to 'Line 3'?

SELECT "color_line" FROM "lines"
WHERE "name"='Line 3';

-- Question 3: Find the top 5 busiest destination stations based on all recorded passenger trips?
SELECT s."name" AS "station name", COUNT(t."id") AS "total arrivals"
FROM "trips" AS t
JOIN "stations" AS s ON t."end_station_id"=s."id"
GROUP BY t."end_station_id"
ORDER BY "total arrivals" DESC
LIMIT 5;

--Question 4: List all normal (non-interchange) stations on 'Line 2'?

SELECT s."name" FROM "stations" AS s
JOIN "line_station" AS ls on s."id" = ls."station_id"
JOIN "lines" l ON l."id" = ls."line_id"
WHERE l."name" ='Line 2' AND s."type"='normal'
ORDER BY ls."sequence";

-- Question 5: What is the highest ticket price available in the current pricing scheme?

SELECT MAX("price") AS "Max Ticket Price(EGP)" FROM "fares";

-- Question 6: Retrieve all trips that took place today (or the most recent commutes)
-- This takes advantage of the 'search_trip_date' index for optimal reading speed?
SELECT * FROM "live_trips_report"
WHERE "date_time" >= DATE('now')
ORDER BY "date_time" DESC;


-- Question 7: Find out which lines pass through the 'Sadat' interchange station?
SELECT l."name" AS "Line Name", l."color_line" AS "Line Color"
FROM "lines" l
JOIN "line_station" ls ON l."id" = ls."line_id"
JOIN "stations" s ON s."id" = ls."station_id"
WHERE s."name" = 'Sadat';


-- Question 8: Count how many stations are covered in each fare pricing bracket?
SELECT "price" AS "Ticket Price (EGP)",
       ("max_stops" - "min_stops" + 1) AS "Number of Stops Covered"
FROM "fares"
ORDER BY "price" ASC;
