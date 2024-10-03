# app/models/asset.rb
class Asset < ApplicationRecord
  validates :asset_id, presence: true
  validates :uuid, presence: true
  validates :url, presence: true
  validates :version, presence: true
end
