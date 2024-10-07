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

CSV.foreach(Rails.root.join('db/csv/customer_foods.csv'), headers: true) do |row|
  customer_id = row['customer_id']
  foods = row['foods'].split(',').map(&:strip)  # Split and strip whitespace

  # Find the customer
  customer = Customer.find_by(id: customer_id)

  if customer
    foods.each do |food_id|
      food = Food.find_by(id: food_id)

      if food
        # Associate the food with the customer
        customer.foods << food unless customer.foods.include?(food)
      else
        puts "Food with ID #{food_id} not found for Customer #{customer_id}!"
      end
    end
  else
    puts "Customer with ID #{customer_id} not found!"
  end
end
