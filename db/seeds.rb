# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Create an admin role
admin_role = Role.create(name: 'admin')

# Create an admin user
admin_user = User.create(
  email: 'admin@admin.com',
  password: 'Gmr123456', # Set your desired password here
  password_confirmation: 'Gmr123456'
)

# Assign the admin role to the admin user
admin_user.add_role(:admin)