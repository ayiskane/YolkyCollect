# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'csv'

csv_file_path = Rails.root.join('db', 'csv', 'areas_employees.csv')

# Ensure Employees table is cleared before seeding
Employee.destroy_all

# Fetch existing areas from the database by ID or name
areas = {
  1 => Area.find_by(area: 'DiningRoom'),
  2 => Area.find_by(area: 'Kitchen'),
  3 => Area.find_by(area: 'Garden'),
  4 => Area.find_by(area: 'Buffet'),
  5 => Area.find_by(area: 'Pond'),
  6 => Area.find_by(area: 'TakeOut'),
  7 => Area.find_by(area: 'Courtyard'),
  8 => Area.find_by(area: 'Terrace')
}

# Open the CSV file and iterate over each row
CSV.foreach(csv_file_path, headers: true) do |row|
  employee_id = row['employee_id']
  area_id = row['area_id'].to_i

  # Find or create employee by their ID
  employee = Employee.find_or_create_by(id: employee_id)

  # Associate employee with area if it's not already associated
  area = areas[area_id]
  employee.areas << area if area && !employee.areas.include?(area)
end
