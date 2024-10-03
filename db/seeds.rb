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

csv_file_path = Rails.root.join('db', 'csv', '11.25_localizeData.csv')

# Open the CSV file and iterate over each row
CSV.foreach(csv_file_path, headers: true) do |row|
  LocalizeData.find_or_create_by(id: row['id']) do |localize_data|
    localize_data.en = row['en']
    localize_data.cn = row['cn']
    localize_data.cn2 = row['cn2']
    localize_data.jp = row['jp']
    localize_data.kr = row['kr']
  end
end
