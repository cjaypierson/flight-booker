# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Flight::delete_all
Airport::delete_all

airports = Airport.create([{ name: "Chicago O'Hare", code: "ORD" }, 
													 { name: "Los Angeles International", code: "LAX" },
													 { name: "Dallas-Fort Worth International", code: "DFW" }, 
													 { name: "Denver International", code: "DEN" },
													 { name: "Joh F. Kennedy International", code: "JFK" }, 
													 { name: "Miami International", code: "MIA" },
													 { name: "Phoenix Sky Harbor International", code: "PHX" }, 
													 { name: "McCarran International", code: "LAS" },
													 { name: "George Bush Intercontinental", code: "IAH" }, 
													 { name: "Charlotte Douglas International", code: "CLT" }])

flights = Flight.create([{ arrival_id: 1, departure_id: 10, date: Date.today, departure_time: Time.now, arrival_time: Time.now + 10800 },
												 { arrival_id: 2, departure_id: 9, date: Date.today, departure_time: Time.now, arrival_time: Time.now + 10800 },
												 { arrival_id: 3, departure_id: 8, date: Date.today, departure_time: Time.now, arrival_time: Time.now + 10800 },
												 { arrival_id: 4, departure_id: 7, date: Date.today, departure_time: Time.now, arrival_time: Time.now + 10800 },
												 { arrival_id: 5, departure_id: 6, date: Date.today, departure_time: Time.now, arrival_time: Time.now + 10800 },
												 { arrival_id: 6, departure_id: 1, date: Date.today, departure_time: Time.now, arrival_time: Time.now + 10800 },
												 { arrival_id: 7, departure_id: 2, date: Date.today, departure_time: Time.now, arrival_time: Time.now + 10800 },
												 { arrival_id: 8, departure_id: 3, date: Date.today, departure_time: Time.now, arrival_time: Time.now + 10800 },
												 { arrival_id: 9, departure_id: 4, date: Date.today, departure_time: Time.now, arrival_time: Time.now + 10800 },
												 { arrival_id: 10, departure_id: 5, date: Date.today, departure_time: Time.now, arrival_time: Time.now + 10800 },
												 { arrival_id: 1, departure_id: 10, date: Date.today, departure_time: Time.now, arrival_time: Time.now + 10800 },
												 { arrival_id: 2, departure_id: 9, date: Date.today, departure_time: Time.now, arrival_time: Time.now + 10800 },
												 { arrival_id: 3, departure_id: 8, date: Date.today, departure_time: Time.now, arrival_time: Time.now + 10800 },
												 { arrival_id: 4, departure_id: 7, date: Date.today, departure_time: Time.now, arrival_time: Time.now + 10800 },
												 { arrival_id: 5, departure_id: 6, date: Date.today, departure_time: Time.now, arrival_time: Time.now + 10800 },
												 { arrival_id: 6, departure_id: 1, date: Date.today, departure_time: Time.now, arrival_time: Time.now + 10800 },
												 { arrival_id: 7, departure_id: 2, date: Date.today, departure_time: Time.now, arrival_time: Time.now + 10800 },
												 { arrival_id: 8, departure_id: 3, date: Date.today, departure_time: Time.now, arrival_time: Time.now + 10800 },
												 { arrival_id: 9, departure_id: 4, date: Date.today, departure_time: Time.now, arrival_time: Time.now + 10800 },
												 { arrival_id: 10, departure_id: 5, date: Date.today, departure_time: Time.now, arrival_time: Time.now + 10800 }])

passengers = Passenger.create([{ name: Faker::Name.name, email: Faker::Internet.email},
															 { name: Faker::Name.name, email: Faker::Internet.email},
															 { name: Faker::Name.name, email: Faker::Internet.email},
															 { name: Faker::Name.name, email: Faker::Internet.email},
															 { name: Faker::Name.name, email: Faker::Internet.email},
															 { name: Faker::Name.name, email: Faker::Internet.email},
															 { name: Faker::Name.name, email: Faker::Internet.email},
															 { name: Faker::Name.name, email: Faker::Internet.email},
															 { name: Faker::Name.name, email: Faker::Internet.email},
															 { name: Faker::Name.name, email: Faker::Internet.email}])

groups = Group.create([{ booking_id: 1, passenger_id: 1},
											 { booking_id: 1, passenger_id: 2},
											 { booking_id: 2, passenger_id: 3},
											 { booking_id: 3, passenger_id: 4},
											 { booking_id: 1, passenger_id: 5},
											 { booking_id: 2, passenger_id: 6},
											 { booking_id: 3, passenger_id: 7},
											 { booking_id: 1, passenger_id: 8},
											 { booking_id: 2, passenger_id: 9},
											 { booking_id: 3, passenger_id: 10}])

bookings = Booking.create([{ flight_id: 1},
													 { flight_id: 4},
											 		 { flight_id: 2},
											 		 { flight_id: 3},
											 		 { flight_id: 5},
											 		 { flight_id: 2},
											 		 { flight_id: 3},
											 		 { flight_id: 1},
											 		 { flight_id: 5},
											 		 { flight_id: 3}])




















