# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

chile = Country.create(name: "Chile")
chile = Country.create(name: "Argentina")
chile = Country.create(name: "Peru")
chile = Country.create(name: "Bolivia")
chile = Country.create(name: "Uruguay")
chile = Country.create(name: "Brasil")
chile = Country.create(name: "Colombia")
chile = Country.create(name: "Venezuela")

metropolitana = Region.create(name: "Metropolitana", country: chile)
arica_parinacota = Region.create(name: "Arica y Parinacota", country: chile)
tarapaca =  Region.create(name: "Tarapacá", country: chile)
antofagasta = Region.create(name: "Antofagasta", country: chile)
atacama = Region.create(name: "Atacama", country: chile)
coquimbo = Region.create(name: "Coquimbo", country: chile)
valparaiso = Region.create(name: "Valparaiso", country: chile)
ohiggins = Region.create(name: "O'Higgins", country: chile)
maule = Region.create(name: "Maule", country: chile)
nuble = Region.create(name: "Ñuble", country: chile)
bio_bio = Region.create(name: "Bío Bío", country: chile)
araucania = Region.create(name: "Araucanía", country: chile)
los_rios =  Region.create(name: "Los Ríos", country: chile)
los_lagos = Region.create(name: "Los Lagos", country: chile)
aysen = Region.create(name: "Aysén", country: chile)
magallanes_antartica = Region.create(name: "Magallanes y Antártica Chilena", country: chile)

user1 = User.create(email: "correo@uno.cl", password: "123456")
user2 = User.create(email: "correo@dos.cl", password: "123456", role: 1)
user3 = AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

ruta1 = Route.create(location: "Chacabuco", zone: "Zona piola", name: "Cuatico", date: "01/01/2022")
ruta2 = Route.create(location: "Chacabuco", zone: "Zona piola", name: "Patanes", date: "01/01/2022")
ruta3 = Route.create(location: "Chacabuco", zone: "Zona piola", name: "Chaucha", date: "01/01/2022")