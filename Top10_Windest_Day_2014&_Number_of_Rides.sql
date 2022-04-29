 with newtable as 
            (Select date, sum(num_trip) as num_trips
                from (SELECT date(pickup_datetime) as date, count(*) as num_trip from Uber_trips
                     Where strftime('%Y', pickup_datetime)="2014"
                     Group by date

                     Union all

                    SELECT date(pickup_datetime) as date, count(*) as num_trip from Yellow_Taxi_trips
                    Where strftime('%Y', pickup_datetime)="2014"
                    Group by date)
                group by date)
                    
               
               
              Select n.date, n.num_trips
              from newtable n
              Join
                (Select date(DATE) as date, DailyAverageWindSpeed
                From Daily_Weather_Information
                Where strftime('%Y', DATE)="2014"
                Order by DailyAverageWindSpeed Desc
                Limit 10) w
            on n.date=w.date        

                