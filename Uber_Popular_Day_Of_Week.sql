SELECT strftime('%w', u.pickup_datetime) as weekofday, count(*) as Counts
                                From Uber_trips u
                                where date(u.pickup_datetime)>="2009-01-01" and date(u.pickup_datetime)<="2015-06-30"
                                group by weekofday
                                order by Counts desc