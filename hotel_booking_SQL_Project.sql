Select *
From PortofolioProject..hotel_bookings

Select hotel Hotel, is_canceled Reservation_Status, count(is_canceled) as Total
From PortofolioProject..hotel_bookings
Group By hotel, is_canceled
Order By 1

Select hotel, time_booked, count(time_booked) total_reservation, avg(adr/[Total Guests]) adr_per_person
From PortofolioProject..hotel_bookings
Group By hotel, time_booked
Order By 1, 4 desc

Select hotel, adults, count(adults)
From PortofolioProject..hotel_bookings
Where adults <> 0
Group By hotel, adults
Order by 1, 3 desc

Select hotel, country, avg(adr/[Total Guests]) adr_per_person
From PortofolioProject..hotel_bookings
Group By hotel, country
Order By 1, 3 asc

Select hotel, country, cost_category, count(cost_category) total, avg(adr/[Total Guests]) adr_per_person
From PortofolioProject..hotel_bookings
Group By hotel, country, cost_category
Order By 1, 3, 5 desc

Select hotel, region, count(hotel) total_reservation
From PortofolioProject..hotel_bookings
Group By hotel, region
Order By 3 desc

Select hotel, market_segment, avg(adr/[Total Guests]) adr
From PortofolioProject..hotel_bookings
Where market_segment <> 'Undefined'
Group By hotel, market_segment
Order By 1, 3 desc

Select hotel, meal, count(meal) total, avg(adr/[Total Guests]) adr
From PortofolioProject..hotel_bookings
Group By hotel, meal
Order By 1, 4 desc

Select hotel, [Repeated Guests], count([Repeated Guests]) total
From PortofolioProject..hotel_bookings
Where is_canceled <> 'canceled'
Group By hotel, [Repeated Guests]
Order By 1

Select hotel, reserved_room_type room_type, count(reserved_room_type) total_reserved, 
	count(assigned_room_type) total_assigned, min([Total Guests]) min_guest, max([Total Guests]) max_guest
From PortofolioProject..hotel_bookings
Where is_canceled <> 'Canceled'
Group By hotel, reserved_room_type
Order By 1, 2

Select hotel, country_income, cost_category, count(hotel) total_reservation, avg(adr/[Total Guests]) adr_perguest
From PortofolioProject..hotel_bookings
Where is_canceled <> 'Canceled'
Group By hotel, country_income, cost_category
Order By 4 desc

Select hotel, children+babies kids, meal, count(meal) total
From PortofolioProject..hotel_bookings
Where is_canceled <> 'Canceled'
Group By hotel, children+babies, meal
Order By 1, 2, 4 desc

Select hotel, market_segment, customer_type, count(hotel) total_reservation, avg(days_in_waiting_list) days_waiting_list
From PortofolioProject..hotel_bookings
Where is_canceled <> 'Canceled'
Group By hotel, market_segment, customer_type
Order By 5 desc

Select region, hotel, cost_category, count(hotel) total_reservation, avg(days_in_waiting_list) days_waiting_list
From PortofolioProject..hotel_bookings
Where is_canceled <> 'Canceled'
Group By region, hotel, cost_category
Order By 5 desc

Select hotel, avg(days_in_waiting_list) days_waiting_list, is_canceled, count(is_canceled) total
From PortofolioProject..hotel_bookings
---Where is_canceled = 'Canceled'
Group By hotel, is_canceled
Order by 4 desc

Select hotel, days_in_waiting_list, is_canceled, count(is_canceled) total, sum([Total Guests]) total_guest
From PortofolioProject..hotel_bookings
Group By hotel, days_in_waiting_list, is_canceled
Order by 1, 2, 3, 4 desc

Select hotel, cost_category, total_of_special_requests, count(hotel) total_reservation
From PortofolioProject..hotel_bookings
Group By hotel, cost_category, total_of_special_requests
Order By 1, 2, 4 desc

Select hotel, cost_category, required_car_parking_spaces, count(hotel) total_reservation
From PortofolioProject..hotel_bookings
Group By hotel, cost_category, required_car_parking_spaces
Order By 1, 2, 4 desc