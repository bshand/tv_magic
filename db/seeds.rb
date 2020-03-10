# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

tv1 = Tv.find_or_create_by! make: 'Parasonic', model: '32" widescreen'
tv2 = Tv.find_or_create_by! make: 'Parasonic', model: '85" behemoth'
tv3 = Tv.find_or_create_by! make: 'Sonny', model: 'X24, 24 inch with built in CD player'
tv4 = Tv.find_or_create_by! make: 'Fire', model: 'Mount Doom'

def add_tvs_to_remote(tvs, remote)
  tvs.each { |tv| tv.remotes << remote unless tv.remotes.include?(remote) }
end

remote_p = Remote.find_or_create_by! name: 'Parasonic standard remote',
                                     description: 'Comes with all Parasonic TVs'
add_tvs_to_remote([tv1, tv2], remote_p)

remote_s = Remote.find_or_create_by! name: 'Sonny standard remote',
                                     description: 'Comes with all Sonny TVs'
add_tvs_to_remote([tv3, tv2], remote_s)

remote_u = Remote.find_or_create_by! name: 'Universal remote control',
                                     description: "Pretty good at working with all TVs.\n" \
                                                  "Doesn't operate built-in CD players."
add_tvs_to_remote([tv1, tv2, tv3], remote_u)

remote_m = Remote.find_or_create_by! name: 'Magic ring',
                                     description: 'And in the darkness bind them'
add_tvs_to_remote([tv1, tv2, tv3], remote_m)
