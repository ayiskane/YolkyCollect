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

assets_file_path = '/var/www/vhosts/yolkycollect.com/yolkycollect/db/csv/assets.csv'

CSV.foreach(assets_file_path, headers: true) do |row|
  # Find or initialize an asset by the id
  asset = Asset.find_or_initialize_by(id: row['id'])

  # Set or update the attributes from the CSV
  asset.asset_id = row['asset_id']
  asset.url = row['url']
  asset.version = row['version']

  # Save the asset (either create a new one or update the existing one)
  if asset.save
    puts "Asset with ID #{row['id']} (Asset ID: #{row['asset_id']}) saved successfully."
  else
    puts "Failed to save asset with ID #{row['id']}: #{asset.errors.full_messages.join(', ')}"
  end
end


puts "Seeding completed!"
