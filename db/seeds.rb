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

# Seed AssetKeys from CSV
asset_keys_file_path = '/var/www/vhosts/yolkycollect.com/yolkycollect/db/csv/asset_keys.csv'
CSV.foreach(asset_keys_file_path, headers: true) do |row|
  # Find the asset by id
  asset = Asset.find_by(id: row['asset_id'])

  if asset
    # Use find_or_initialize_by to find or create a new AssetKey
    asset_key = AssetKey.find_or_initialize_by(id: row['id']) do |key|
      key.asset = asset  # Assign the asset only when creating a new record
    end

    # Update attributes if the asset_key is already existing
    asset_key.asset = asset if asset_key.asset_id != asset.id

    # Save the record (create or update)
    asset_key.save!
  else
    puts "Asset with ID #{row['asset_id']} not found!"
  end
end


puts "Seeding completed!"
