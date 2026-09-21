create database Ola;
use Ola;
select*from bookings;

#1. Retrieve all succesfull bookings:
create view Successful_Bookings as 
select*from bookings
where Booking_Status ='Success';
-- ANSWER
Select*from Successful_Bookings;

#2. find the average ride distance for each vechile type:
create view ride_distance_for_each_vechile as 
select  Vehicle_Type, avg(Ride_Distance) as Avg_Distance 
from bookings
group by Vehicle_Type;
-- ANSWER 
select * from ride_distance_for_each_vechile;

#3. Get the total number of canceled rides by customer:
create view canceled_rides_by_customer as
select count(*) from bookings where Booking_Status='Canceled by Customer';

-- ANSWER
Select * from canceled_rides_by_customer;

#4. list the top 5 customers who booked the highest number of rides:
create view top_5_customers as 
select Customer_ID, count(Booking_ID) as total_rides
from bookings
group by Customer_ID
order by total_rides desc limit 5;

-- ANSWER
select*from top_5_customers;

#5. get the number of rides canceled by driver due to personal and car-related issues:
create view  number_of_rides_canceled_by_driver as 
select count(*) 
from bookings
where Canceled_Rides_by_Driver = 'Personal & Car related issue'

-- ANSWER 
select * from number_of_rides_canceled_by_driver;

#6. find the maximum and minimum driver ratings for prime sedan bookings:
create view  maximum_and_minimum_driver_ratings_for_prime_sedan AS
select max(Driver_Ratings) as max_rating,
min(Driver_Ratings) as min_rating
from bookings
where Vehicle_Type = 'Prime Sedan';

-- ANSWER
select * from maximum_and_minimum_driver_ratings_for_prime_sedan;

#7. retrieve all rides where payment was made using UPI:
create view payment_was_made_using_UPI as 
select * from bookings
where Payment_Method ='UPI';

-- ANSWER
select * from payment_was_made_using_UPI;

#8. find the average customer rating per vechile type:
create view average_customer_rating_per_vechile_type as 
select vehicle_Type, avg(Customer_Rating)
from bookings
group by Vehicle_Type;

-- ANSWER
select * from average_customer_rating_per_vechile_type;

#9. calculate the total bookings value of rides completed successfull:
create view total_bookings_value_of_rides_completed as 
select sum(Booking_Value)
from bookings 
where Booking_Status ='Success';

-- ANSWER
select * from total_bookings_value_of_rides_completed;

#10. list all incomplete rides along with the reason:
create view incomplete_rides_along_with_the_reason as
select Booking_ID, Incomplete_Rides_Reason
from bookings
where Incomplete_Rides ='Yes';

-- ANSWER
select * from incomplete_rides_along_with_the_reason;




