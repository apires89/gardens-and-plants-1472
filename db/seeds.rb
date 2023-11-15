# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Garden.destroy_all

Garden.create!(name: "Parque da Cidade", banner_url: "https://agendaculturalporto.org/wp-content/uploads/2020/03/parque-da-cidade-porto.jpg")
Garden.create!(name: "Serralves", banner_url: "https://cdn.getyourguide.com/img/tour/5f6ccc594de99.jpeg/146.jpg")

