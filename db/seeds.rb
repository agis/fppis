# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create title: 'Food'
Category.create title: 'People'
Category.create title: 'Places'

Author.create name: 'Corey Tai'
Author.create name: 'Agis Anastasopoulos'

Photographer.create name: 'A photographer!'
Photographer.create name: 'A happy photographer'