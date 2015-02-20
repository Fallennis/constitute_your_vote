# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


politician = Politician.create!(name: "Barack Obama", email: "obama@gmail.com", password: "password")

bill = Bill.create!(name: "Healthcare", description_text: "A bill to redefine affordable healthcare", politician_id: 1)

voter = Voter.create!(name: "Sam Jones", email: "sam@gmail.com", password: "password", politician_id: 1)

vote = Vote.create!(voter_id: 1, bill_id: 1)

#
#
# 10.times do
#   Politician.create!(name: Faker::Name.name,
#                 email: Faker::Internet.email,
#                 password: "password")
# end
#
#
# all_politicians = Politician.all
# voters = Voter.all
#
#
# 10.times do
#   bill = Bill.create!(name: Faker::App.name,
#                         description_text: Faker::Lorem.sentence,
#                         politician_id: all_politicians.sample)
# 3.times do
# vote.bills << Vote.create!(voter_id: voters.sample,
#                            bill_id: bill)
#
#   end
# end
#
# 10.times do
#   Voter.create!(name: Faker::Name.name,
#                 email: Faker::Internet.email,
#                 password: "password"
#                 politician_id: all_politicians.sample)
# end
