CREATE TABLE "Uber_trips" (
"key" TEXT,
  "fare_amount" REAL,
  "pickup_datetime" TEXT,
  "pickup_longitude" REAL,
  "pickup_latitude" REAL,
  "dropoff_longitude" REAL,
  "dropoff_latitude" REAL,
  "passenger_count" INTEGER,
  "distance" REAL
);

CREATE TABLE "Yellow_Taxi_trips" (
"vendor_id" TEXT,
  "pickup_datetime" TEXT,
  "dropoff_datetime" TEXT,
  "passenger_count" INTEGER,
  "pickup_longitude" REAL,
  "pickup_latitude" REAL,
  "dropoff_longitude" REAL,
  "dropoff_latitude" REAL,
  "payment_type" TEXT,
  "fare_amount" REAL,
  "surcharge" REAL,
  "mta_tax" REAL,
  "tip_amount" REAL,
  "tolls_amount" REAL,
  "total_amount" REAL,
  "distance" REAL
);

CREATE TABLE "Daily_Weather_Information" (
"DATE" TEXT,
  "DailyAverageWindSpeed" REAL,
  "DailyPeakWindSpeed" REAL,
  "DailyPrecipitation" TEXT,
  "DailySustainedWindSpeed" REAL
);

CREATE TABLE "Hourly_Weather_Information" (
"DATE" TEXT,
  "HourlyPrecipitation" TEXT,
  "HourlyWindGustSpeed" REAL,
  "HourlyWindSpeed" REAL
);