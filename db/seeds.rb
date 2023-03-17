# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# 100.times do |i|
#       puts "Creating Student #{i + 4}"
#       Student.create(
#         email: "student#{i + 4}@gmail.com",
#         password:"123456",
#         name: "Student #{i + 4}",
#       )
#     end

10.times do |i|
    Admin.find(1).students << Student.find(i+88)
end

# 30.times do |i|
#     Admin.find(2).students << Student.find(i+ 58)
# end

# 30.times do |i|
#     Admin.find(4).students << Student.find(i+ 58)
# end

10.times do |i|
    Admin.find(5).students << Student.find(i+ 88)
end

10.times do |i|
    Admin.find(6).students << Student.find(i+88)
end

# 10.times do |i|
#     Admin.find(7).students << Student.find(i + 88)
# end