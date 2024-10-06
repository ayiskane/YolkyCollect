class Asset < ApplicationRecord
    # There is no primary key in the table
    self.primary_key = nil

    # Relationship with AssetKey based on asset_id
    belongs_to :asset_key, foreign_key: "asset_id", primary_key: "asset_id"
end
