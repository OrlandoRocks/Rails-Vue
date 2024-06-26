# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

admin_role = Role.create(name: 'admin')
client_role = Role.create(name: 'client')
user_role = Role.create(name: 'user')

User.create(email: 'admin@admin.com', password: 'qwe123', name:'Admin', last_name: 'Admin', role: admin_role)
User.create(email: 'client@client.com', password: 'qwe123', name:'Client', last_name: 'Client', role: client_role)
