# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

### Example Users ###
## Owner
User.create(email: "admin@example.com", password: "password", 
            role: 1, name: "Owns Everything")
## Veterinarians
User.create(email: "veterinarian@example.com", password: "password", 
            role: 2, name: "Bob the Builder", address: "123 Sesame Street", 
            city: "Compton", state: "California", zip: "90220", 
            school_received_degree_from: "Stanford", years_in_practice: 6)
User.create(email: "veterinarian2@example.com", password: "password", 
            role: 2, name: "Susan Boyle", address: "201 E 21st Street", 
            city: "Austin", state: "Texas", zip: "78705", 
            school_received_degree_from: "The University of Texas", 
            years_in_practice: 25)
## Receptionist
User.create(email: "receptionist@example.com", password: "password", 
            role: 3, name: "Reese Epsun")
## Customers
User.create(email: "customer@example.com", password: "password", 
            role: 4, id: 244, name: "John Foo", address: "1 Way Street", 
            city: "Spring", state: "Texas", zip: "77373")
User.create(email: "customer2@example.com", password: "password", 
            role: 4, id: 245, name: "Isa Bella", address: "43 W 34th Street", 
            city: "New York", state: "New York", zip: "10001")

### Example Pets ###
Pet.create(name_of_pet: "Pumpkin", type_of_pet: "Dog", breed: "Mixed", 
           age: 2, weight: 40, date_last_visited: (Date.today - 90), 
           user_id: 244)
Pet.create(name_of_pet: "Wiz Khalifa", type_of_pet: "Bird", breed: "Parakeet", 
           age: 5, weight: 1, date_last_visited: (Date.today - 420), 
           user_id: 245)
