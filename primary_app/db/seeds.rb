# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
# Offer.destroy_all
# Onboarding.destroy_all
# Company.destroy_all

u = User.create!(:email => "test@example.com", :password => "test123", :password_confirmation => "test123")
u.offer << offer.last
Onboarding.create!(:name => "Screening", :description => "dsa", :datail => "fsa" )
