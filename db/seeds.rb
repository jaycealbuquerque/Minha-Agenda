# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'seeds iniciado'

#Tipo.create!(nome: 'novo', descricao: 'novo')
100.times do
	Contato.create(nome: Faker::Name.name, telefone: Faker::Number.number(10), user_id: 1, tipo_id: rand(2..4))
end


puts 'seeds terminado'

