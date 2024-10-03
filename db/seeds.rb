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

# Load Assets
# CSV.foreach(Rails.root.join('db/csv/assets.csv'), headers: true) do |row|
#   Asset.create!(
#     asset_id: row['asset_id'],
#     uuid: row['uuid'],
#     url: row['url'],
#     version: row['version'].to_f
#   )
# end

# Load AssetKeys
CSV.foreach(Rails.root.join('db/csv/asset_keys.csv'), headers: true) do |row|
  AssetKey.create!(
    id: row['id'],
    asset_id: row['asset_id'],
    order: row['order'],
    version: row['version'].to_f
  )
end
