# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

appliances = Category.create! :name => "Home Appliances"
mobile = Category.create! :name => "Mobile"
clothings = Category.create! :name => "Clothings"
computers = Category.create! :name => "Computers & Accessories"
toys = Category.create! :name => "Toys"
furniture = Category.create! :name => "Furniture"

Product.create! :name => "Refrigerator", :price => 10.00, :description => "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", :category => appliances
Product.create! :name => "Television", :price => 20.00, :description => "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", :category => appliances
Product.create! :name => "Washing Machine", :price => 30.00, :description => "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", :category => appliances
Product.create! :name => "Samsung", :price => 40.00, :description => "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", :category => mobile
Product.create! :name => "Nokia", :price => 50.00, :description => "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", :category => mobile
Product.create! :name => "iPhone", :price => 60.00, :description => "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", :category => mobile
Product.create! :name => "T-Shirt", :price => 70.00, :description => "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", :category => clothings
Product.create! :name => "Jeans", :price => 80.00, :description => "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", :category => clothings
Product.create! :name => "Shirt", :price => 90.00, :description => "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", :category => clothings
Product.create! :name => "Dell", :price => 10.00, :description => "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", :category => computers
Product.create! :name => "Sony Vaio", :price => 20.00, :description => "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", :category => computers
Product.create! :name => "HP", :price => 30.00, :description => "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", :category => computers
Product.create! :name => "Soft Ball", :price => 40.00, :description => "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", :category => toys
Product.create! :name => "Toys Car", :price => 50.00, :description => "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", :category => toys
Product.create! :name => "Game", :price => 60.00, :description => "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", :category => toys
Product.create! :name => "Table", :price => 70.00, :description => "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", :category => furniture

Product.create! :name => "Bed", :price => 80.00, :description => "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", :category => furniture
Product.create! :name => "Chair", :price => 90.00, :description => "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", :category => furniture
Product.create! :name => "Wardrobe", :price => 20.00, :description => "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", :category => furniture