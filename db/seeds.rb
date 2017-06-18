# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Airport.delete_all

sfo = Airport.create(code: "SFO")
jkf = Airport.create(code: "JFK")
lax = Airport.create(code: "LAX")
atl = Airport.create(code: "ATL")
lgo = Airport.create(code: "LGA")
fll = Airport.create(code: "FLL")
tps = Airport.create(code: "TPA")
