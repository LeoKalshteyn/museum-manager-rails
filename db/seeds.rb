# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Exhibit.delete_all
Museum.delete_all
User.delete_all


Museum.create(:museum_name=>'MET', :city=>'New York City', :country=>'United States')
Museum.create(:museum_name=>'Hermitage', :city=>'St. Petersburg', :country=>'Russia')
Museum.create(:museum_name=>'The Louvre', :city=>'Paris', :country=>'France')
