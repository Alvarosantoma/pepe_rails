# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'CSV'

@row = CSV.read("#{Rails.root}/lib/assets/Final_Data.csv")
@row.each do |row|
  insurance = Insurance.new(time: row[0],temperature_heater: row[1], pressure_heater: row[2],pressure_valve: row[3], flow_rate_valve: row[4],water_level_tank: row[5], OEE_heater: row[6], OEE_valve: row[7], overall_OEE: row[8], predicted_OEE: row[9], upper_range: row[10], lower_range: row[11], premium: row[12],stability: row[13]  )
  # temperature_heater = row[1]
  # pressure_heater =row[2]
  # pressure_valve = row[3]
  # flow_rate_valve = row[4]
  # water_level_tank = row[5]
  # OEE_heater = row[6]
  # OEE_valve = row[7]
  # overall_OEE = row[8]
  # predicted_OEE = row[9]
  # upper_range = row[10]
  # lower_range = row[11]
  # premium = row[12]
  # stability = row[13]
  insurance.save
end

