SELECT strftime('%H', y.pickup_datetime) as Hour, count(*) as Counts
                                From Yellow_Taxi_trips y
                                where date(y.pickup_datetime)>="2009-01-01" and date(y.pickup_datetime)<="2015-06-30"
                                group by Hour
                                order by Counts desc