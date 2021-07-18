# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
stud = Student.create(name: 'reena' , last_name: 'sharma', gender: "F", dob: Date.parse("17/05/1998"), dob: Date.parse("01/05/2021"), email:"@gmail.com", department_id:rand(1..6))