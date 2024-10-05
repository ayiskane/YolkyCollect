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

csv_file_path = Rails.root.join('db', 'csv', 'memorialData.csv')

CSV.foreach(csv_file_path, headers: true) do |row|
  source_customer = Customer.find_by(id: row['from'])  # Ensure 'from' matches a valid customer id
  need_customer = Customer.find_by(id: row['needCus'])  # Ensure 'needCus' matches a valid customer id

  # Find or create the Memorial record
  Memorial.find_or_create_by(id: row['id']) do |memorial|
    memorial.sourceCustomer = source_customer
    memorial.needStar = row['needStar']
    memorial.shareCoin = row['shareCoin']
    memorial.needPlayDay = row['needPlayDay']
    memorial.needCustomer = need_customer
    memorial.needCustomerCnt = row['needCusCount (count)']
    memorial.isSecretStore = row['secret_store']
    memorial.assetKeyId = row['img']
    memorial.version = row['version']
  end
end
