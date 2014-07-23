# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Role.find_or_create_by(name: "Admin")
Role.find_or_create_by(name: "Moderator")
Role.find_or_create_by(name: "Member")

User.create!(
	:username => "lvlsvn",
	:email => "michael.burkle@lvlsvn.com",
	:role_id => Role.where(name: "Admin").first,
  :password => "P@$$w0rd",
  )