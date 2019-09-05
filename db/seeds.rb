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

Museum.create(:museum_name=>'Metropolitan Museum of Art', :city=>'New York City', :country=>'United States')
Museum.create(:museum_name=>'State Hermitage', :city=>'St. Petersburg', :country=>'Russia')
Museum.create(:museum_name=>'Le Louvre', :city=>'Paris', :country=>'France')
Museum.create(:museum_name=>'Smithsonian Institution', :city=>'Washington, D.C.', :country=>'United States')
Museum.create(:museum_name=>'The Acropolis Museum', :city=>'Athens', :country=>'Greece')
Museum.create(:museum_name=>'The British Museum', :city=>'London', :country=>'United Kingdom')
Museum.create(:museum_name=>'The Prado', :city=>'Madrid', :country=>'Spain')
Museum.create(:museum_name=>'The Vatican Museums', :city=>'Vatican City', :country=>'Italy')
Museum.create(:museum_name=>'The Uffizi Gallery', :city=>'Florence', :country=>'Italy')
Museum.create(:museum_name=>'Rijksmuseum', :city=>'Amsterdam', :country=>'Netherlands')

TransitStatus.create(:status=>'Has not left original location')
TransitStatus.create(:status=>'In transit')
TransitStatus.create(:status=>'Has Arrived to destination')
