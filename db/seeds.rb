# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
10.times do |index|
  doc = Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, specialty: "spécialité#{index}", postal_code: Faker::Address.postcode)
end

20.times do |index|
  gens = Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

3.times do |index|
  rdv = Appointment.create(doctor_id: 3, patient_id: 2, appointment_date: Faker::Date.forward(23))
end
