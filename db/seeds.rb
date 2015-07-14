# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

[
  {
    nick: 'thathalas',
    email: 'joschka@notsitz.info',
    role: 'admin',
    password: 'iamaprettygoodpassword,dontyouthink',
    password_confirmation: 'iamaprettygoodpassword,dontyouthink'
  },{
    nick: 'salzig',
    email: 'ben@notsitz.info',
    role: 'admin',
    password: 'strangepasswordfromhell,withgreatings',
    password_confirmation: 'strangepasswordfromhell,withgreatings'
  }
].each(&(User.method(:create)))

[
  {
    name: 'Simple',
    author: 'http://www.sokobano.de/',
    field: "#####\n#@$.#\n#####",
    creator_id: 2
  }
].each(&(Map.method(:create)))
