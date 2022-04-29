 with newtable as 
                (SELECT distance, date(pickup_datetime) as date from Uber_trips
                 Where strftime('%Y', pickup_datetime)="2009"
            
                 Union all
            
                SELECT distance, date(pickup_datetime) as date from Yellow_Taxi_trips
                Where strftime('%Y', pickup_datetime)="2009")
            
            Select date, Avg(distance) as Avg_dist 
            FROM newtable
            Group by date
            Order by Count(*) desc
            LIMIT 10
            
            