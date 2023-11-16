# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Garden.destroy_all
Tag.destroy_all

Garden.create!(name: "Parque da Cidade", banner_url: "https://agendaculturalporto.org/wp-content/uploads/2020/03/parque-da-cidade-porto.jpg")
Garden.create!(name: "Serralves", banner_url: "https://cdn.getyourguide.com/img/tour/5f6ccc594de99.jpeg/146.jpg")


Plant.create!(
  name: "Monstera",
  image_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/plants/monstera.jpg",
  garden: Garden.first
)

Plant.create!(
  name: "Philo",
  image_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/plants/philo.jpg",
  garden: Garden.first
)

Plant.create!(
  name: "Dieff",
  image_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/plants/dieffenbachia.jpg",
  garden: Garden.last
)

names = ["fruit", "tree", "cactus", "flower","fern","moss","plant"]

names.each do |name|
  Tag.create(name: name)
end
