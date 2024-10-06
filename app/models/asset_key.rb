class AssetKey < ApplicationRecord
    # There is no primary key in the table
    self.primary_key = nil

    # Relationship with Asset based on asset_id (not id)
    has_one :asset, foreign_key: "asset_id", primary_key: "asset_id"
end
