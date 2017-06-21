# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Airport.delete_all
Flight.delete_all

sfo = Airport.create(code: "SFO")
jfk = Airport.create(code: "JFK")
lax = Airport.create(code: "LAX")
atl = Airport.create(code: "ATL")
lgo = Airport.create(code: "LGA")
fll = Airport.create(code: "FLL")
tps = Airport.create(code: "TPA")

Flight.create(date: Time.now, duration:180, from_id:sfo.id, to_id:jfk.id)
Flight.create(date: Time.now, duration:180, from_id:jfk.id, to_id:lax.id)
Flight.create(date: Time.now, duration:180, from_id:lax.id, to_id:atl.id)
Flight.create(date: Time.now, duration:180, from_id:atl.id, to_id:lgo.id)
Flight.create(date: Time.now, duration:180, from_id:lgo.id, to_id:fll.id)
Flight.create(date: Time.now, duration:180, from_id:tps.id, to_id:sfo.id)
# duplicate
Flight.create(date: Time.now, duration:180, from_id:sfo.id, to_id:jfk.id)