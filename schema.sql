-- In this SQL file, write (and comment!) the schema of your database, including the CREATE TABLE, CREATE INDEX, CREATE VIEW, etc. statements that compose it
-- LINES TABLE:
PRAGMA foreign_keys = ON;
CREATE TABLE "lines"(
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL UNIQUE,
    "color_line" TEXT NOT NULL UNIQUE
);
-- STATION TABLE:
CREATE TABLE "stations"(
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL ,
    "type" TEXT NOT NULL CHECK ("type" IN ('normal','interchange'))
);

-- LINES AND STATIONS TABLE:
CREATE TABLE "line_station"(
    "line_id" INTEGER,
    "station_id" INTEGER,
    "sequence" INTEGER NOT NULL,
    PRIMARY KEY("line_id","station_id" ),
    FOREIGN KEY ("line_id") REFERENCES "lines"("id"),
    FOREIGN KEY ("station_id") REFERENCES "stations"("id")
);
-- FARES TABLE:
CREATE TABLE "fares"(
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "min_stops" INTEGER NOT NULL,
    "max_stops" INTEGER NOT NULL,
    "price" INTEGER NOT NULL
);
-- TRIPS TABLES:
CREATE TABLE "trips"(
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "start_station_id" INTEGER,
    "end_station_id" INTEGER,
    "trip_date" TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY ("start_station_id") REFERENCES "stations"("id"),
    FOREIGN KEY ("end_station_id") REFERENCES "stations"("id")
);
--INDEXES:
CREATE INDEX "search_namestation" ON "stations"("name");

CREATE INDEX "search_station_id" ON "line_station"("station_id");

CREATE INDEX "search_start_trip" ON "trips"("start_station_id");

CREATE INDEX "search_trip_date" ON "trips"("trip_date");

--VIEWS:
CREATE VIEW "live_trips_report" AS
SELECT t."id" AS "trip_id", s1."name" AS "from_station",s2."name" AS "to_station" ,t."trip_date" AS "date_time" FROM "trips" AS t
JOIN "stations" AS s1 ON t."start_station_id"=s1."id"
JOIN "stations" AS s2 ON t."end_station_id"=s2."id";
