# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'date'

COLORS = ['black', 'blue', 'red', 'green', 'white', 'orange', 'brown', 'gray']
SEX = ['M','F']




100.times do
  Cat.create(name: Faker::Name.unique.first_name, color: COLORS.sample, sex: SEX.sample, birth_date: Date.today-rand(10000), description: 'Lorem ipsum dolor sit amet' )
end



# cat1 = Cat.create(name: Faker::Name.unique.first_name, color: COLORS.sample, sex: SEX.sample, birth_date: Date.today-rand(10000), description: 'Lorem ipsum dolor sit amet' )
# cat2 = Cat.create(name: Faker::Name.unique.first_name, color: COLORS.sample, sex: SEX.sample, birth_date: Date.today-rand(10000), description: 'Lorem ipsum dolor sit amet' )
# cat3 = Cat.create(name: Faker::Name.unique.first_name, color: COLORS.sample, sex: SEX.sample, birth_date: Date.today-rand(10000), description: 'Lorem ipsum dolor sit amet' )
# cat4 = Cat.create(name: Faker::Name.unique.first_name, color: COLORS.sample, sex: SEX.sample, birth_date: Date.today-rand(10000), description: 'Lorem ipsum dolor sit amet' )
# cat5 = Cat.create(name: Faker::Name.unique.first_name, color: COLORS.sample, sex: SEX.sample, birth_date: Date.today-rand(10000), description: 'Lorem ipsum dolor sit amet' )
# cat6 = Cat.create(name: Faker::Name.unique.first_name, color: COLORS.sample, sex: SEX.sample, birth_date: Date.today-rand(10000), description: 'Lorem ipsum dolor sit amet' )
# cat7 = Cat.create(name: Faker::Name.unique.first_name, color: COLORS.sample, sex: SEX.sample, birth_date: Date.today-rand(10000), description: 'Lorem ipsum dolor sit amet' )
# cat8 = Cat.create(name: Faker::Name.unique.first_name, color: COLORS.sample, sex: SEX.sample, birth_date: Date.today-rand(10000), description: 'Lorem ipsum dolor sit amet' )
# cat9 = Cat.create(name: Faker::Name.unique.first_name, color: COLORS.sample, sex: SEX.sample, birth_date: Date.today-rand(10000), description: 'Lorem ipsum dolor sit amet' )
# cat10 = Cat.create(name: Faker::Name.unique.first_name, color: COLORS.sample, sex: SEX.sample, birth_date: Date.today-rand(10000), description: 'Lorem ipsum dolor sit amet' )
# cat11 = Cat.create(name: Faker::Name.unique.first_name, color: COLORS.sample, sex: SEX.sample, birth_date: Date.today-rand(10000), description: 'Lorem ipsum dolor sit amet' )
