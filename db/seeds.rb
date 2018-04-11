# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

other_half = Brewery.create(name: "Other Half Brewing Co.", location: "Brooklyn, NY")
interboro = Brewery.create(name: "Interboro Spirits and Ales", location: "Brooklyn, NY")
bottle_logic = Brewery.create(name: "Bottle Logic Brewing", location: "Anaheim, CA")
licbp = Brewery.create(name: "LIC Beer Project", location: "Queens, NY")
tree_house = Brewery.create(name: "Tree House Brewing Company", location: "Charlton, MA")
equilibrium = Brewery.create(name: "Equilibrium Brewery", location: "Middletown, NY")
monkish = Brewery.create(name: "Monkish Brewing Co.", location: "Torrance, CA")
hill_farmstead = Brewery.create(name: "Hill Farmstead Brewery", location: "Greensboro Bend, VT")
alchemist = Brewery.create(name: "The Alchemist", location: "Stowe, VT")


beer_list = [
  ["Julius", tree_house, "IPA", 6.8],
  ["Haze", tree_house, "Imperial IPA", 8.2],
  ["Green", tree_house, "IPA", 7.6],
  ["Double Shot", tree_house, "American Imperial Stout", 7.6],
  ["Single Shot", tree_house, "Milk Stout", 6.4],
  ["King Julius", tree_house, "Imperial IPA", 8.3],
  ["DDH Mylar Bags", other_half, "Imperial IPA", 8.5],
  ["DDH All Citra Everything", other_half, "Imperial IPA", 8.5],
  ["Green Power", other_half, "Imperial IPA", 8.0],
  ["Hypersleep", other_half, "American Imperial Stout", 11.8],
  ["All Infinity Everything", other_half, "Imperial IPA", 8.7],
  ["Oh...", other_half, "IPA", 6.0],
  ["MC²", equilibrium, "Imperial IPA", 8.0],
  ["Fractal Citra", equilibrium, "IPA", 6.8],
  ["Mmm...Osa", equilibrium, "Pale Ale", 4.8],
  ["There And Back Again", equilibrium, "Wild Ale", 6.0],
  ["Casey", equilibrium, "Saison", 6.0],
  ["DDH Premiere", interboro, "IPA", 6.0],
  ["Ambassador", interboro, "Russian Imperial Stout", 11.0],
  ["Barrel-Aged Ambassador", interboro, "Russian Imperial Stout", 11.0],
  ["Can I Kick It?", interboro, "Imperial IPA", 8.0],
  ["Stay Gold", interboro, "IPA", 6.0],
  ["Another Dose", interboro, "Imperial IPA", 7.8],
  ["Reaction State", bottle_logic, "American Imperial Stout", 11.8],
  ["Ground State", bottle_logic, "American Imperial Stout", 13.4],
  ["Fundamental Observation", bottle_logic, "American Imperial Stout", 14.3],
  ["Up Up", bottle_logic, "IPA", 7.0],
  ["Leche Borracho", bottle_logic, "American Imperial Stout", 11.0],
  ["Breathe - Apricot", licbp, "Berliner Weisse", 3.5],
  ["Drop A Gem", licbp, "Imperial IPA", 8.5],
  ["Pile Of Crowns", licbp, "Imperial IPA", 8.5],
  ["Dulcinea", licbp, "Wild Ale", 6.0],
  ["Heaven Beside You", licbp, "American Imperial Stout", 11.0],
  ["Foggier Window", monkish, "Imperial IPA", 8.1],
  ["Juteux", monkish, "Wild Ale", 8.3],
  ["Funk Juggling", monkish, "Saison", 6.0],
  ["Really Real", monkish, "IPA", 8.3],
  ["Smarter Than Spock", monkish, "IPA", 7.1],
  ["Double Citra", hill_farmstead, "Imperial IPA", 8.0],
  ["Everett", hill_farmstead, "Porter", 7.5],
  ["Shirley Mae", hill_farmstead, "Porter", 4.0],
  ["Arthur", hill_farmstead, "Saison", 6.0],
  ["Society & Solitude #4", hill_farmstead, "Imperial IPA", 8.0],
  ["Heady Topper", alchemist, "Imperial IPA", 8.0],
  ["Focal Banger", alchemist, "IPA", 7.0],
  ["Luscious", alchemist, "Russian Imperial Stout", 9.2],
  ["Crusher", alchemist, "Imperial IPA", 9.0]
]

beer_list.each do |beer|
  this_beer = Beer.new(name: beer[0], abv: beer[3], style: beer[2])
  beer[1].beers << this_beer
  this_beer.save
end