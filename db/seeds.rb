# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Character.destroy_all

alex = User.create(username: 'denimcouch', password: 'password1')

c1 = Character.create(name: 'Alex Mata', race: 'Wood Elf', is_adventurer: false, role: '', user_id: alex.id)
c2 = Character.create(name: 'Bgal', race: 'Hill Dwarf', is_adventurer: true, role: 'Paladin', user_id: alex.id)
c1 = Character.create(name: 'Naboo', race: 'High Elf', is_adventurer: true, role: 'Warlock', user_id: alex.id)
c1 = Character.create(name: 'Gethen', race: 'Lightfoot Halfling', is_adventurer: true, role: 'Ranger', user_id: alex.id)

puts 'db seeded!'