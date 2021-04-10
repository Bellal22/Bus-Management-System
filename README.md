# Run Application
this app is an API based Laravel application 
all you need is : 
* composer install 
* php artisan serve 
## Adminstration Area
We use OAuth for Authentication 
log as admin with cridentals : email : "Bellal@gmail.com" password: "123456" 
on endPoint http://127.0.0.1:8000/api/login 
and keep the bearer token for further requests. 
* Admin Area contains { Cities , Buses , Stations , Trips , Seats } full control. 
* 
# User Area 
* list available seats on ex: http://127.0.0.1:8000/api/avilable_seat?trip_id=3&origin=1&dist=3
* Book a seat on http://127.0.0.1:8000/api/bookings

# most important endpoints 
you can reach most important endpoints on https://www.getpostman.com/collections/6f0f2a2ba6e92325fc41 # Shared Collection Postman


## License

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
