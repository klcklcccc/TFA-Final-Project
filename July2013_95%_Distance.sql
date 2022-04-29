 with newtable as 
                (SELECT distance from Uber_trips
                 Where date(pickup_datetime)<="2013-07-31" and date(pickup_datetime)>="2013-07-1"
            
                 Union all
            
                SELECT distance from Yellow_Taxi_trips
                Where date(pickup_datetime)<="2013-07-31" and date(pickup_datetime)>="2013-07-1")
            
            Select distance as "95% distance"
            FROM newtable
            ORDER BY distance ASC
            LIMIT 1
            OFFSET (SELECT
             COUNT(*)
            FROM newtable
            ) * 95 / 100 - 1
            
            