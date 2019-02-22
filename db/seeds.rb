# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Take the database tables back to zero record
Menu.destroy_all
Restaurant.destroy_all

@noodle_house = Restaurant.create(
  name: 'Noodle House',
  address: '754 S State St',
  phone: '312-752-7854'
)

@ajida = Restaurant.create(
  name: 'Ajida',
  address: '201 N Wells St',
  phone: '312-332-6878'
)

Menu.create(
  [
    {name: 'Vegetarian Pasta', image_url: 'veg_pasta.jpg', price: 9.99, restaurant: @noodle_house},
    {name: 'Miso Ramen', image_url: 'miso_ramen.jpg', price: 13.50, restaurant: @ajida},
    {name: 'Japanese Curry Rice', image_url: 'curry_rice.jpg', price: 11.00, restaurant: @ajida}
  ]
)
