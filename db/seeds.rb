# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Order.destroy_all
Product.destroy_all
Category.destroy_all

c = Category.create(name: "Teléfono")
Product.create(name: "Galaxy 6", photo: "", stock: 10, category: c, price:100, created_at: Date.today - 2.day)
Product.create(name: "Galaxy 5", photo: "", stock: 5, category: c, price:200, created_at: Date.today - 1.day)
Product.create(name: "Iphone 6", photo: "", stock: 10, category: c, price:300)

c = Category.create(name: "Notebooks")
Product.create(name: "Macbook Pro", photo: "", stock: 20, category: c, price:400)

u = User.create(email: "gonzalo@desafiolatam.com", password:"12345678")
