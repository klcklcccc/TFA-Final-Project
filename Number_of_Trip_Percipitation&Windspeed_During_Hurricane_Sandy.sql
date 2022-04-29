 WITH RECURSIVE dates(x) AS( 
                SELECT '2012-10-22'
                UNION ALL 
                SELECT DATE(x, '+1 DAYS')FROM dates WHERE x<'2012-11-1' 
                Limit 16),
                
            trips as (SELECT strftime('%H', u.pickup_datetime) as hour, count(*) as num_trip
                     from Uber_trips u
                     Join dates d on date(u.pickup_datetime)=d.x
                     Group by hour
                     
                 Union all

                SELECT strftime('%H', y.pickup_datetime) as hour, count(*) as num_trip
                    from Yellow_Taxi_trips y
                    Join dates d on date(y.pickup_datetime)=d.x
                    Group by hour),
                    
            weather as (Select strftime('%H', w.DATE) as hour, 
                            sum(w.HourlyPrecipitation)as percipitation, 
                            sum(w.HourlyWindSpeed) as windspeed 
                    From Hourly_Weather_Information  w
                    Left Join dates d
                    on w.date=d.x
                    group by hour
            )
                
            Select t.hour, t.trips, h.percipitation, h.windspeed  
            From weather h
            Join (Select hour, sum(num_trip) as trips
                     from trips
                     group by hour) t
            on t.hour=h.hour
            
        