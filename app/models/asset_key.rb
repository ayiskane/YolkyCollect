# app/models/asset_key.rb
class AssetKey < ApplicationRecord
  validates :id, presence: true
  validates :asset_id, presence: true
  validates :order, presence: true
  validates :version, presence: true
end
