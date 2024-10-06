class Memorial < ApplicationRecord
    belongs_to :sourceCustomer, class_name: "Customer", foreign_key: "sourceCustomer_id", optional: true
    belongs_to :needCustomer, class_name: "Customer", foreign_key: "needCustomer_id", optional: true

  # Method to fetch the asset URL
  def asset_url
    asset_key = AssetKey.find_by(id: self.assetKeyId)
    return unless asset_key

    asset = Asset.find_by(asset_id: asset_key.asset_id)
    return unless asset

    "/app/assets/images/assets/#{asset.url}"
  end

  def asset_key
    AssetKey.find_by(id: assetKeyId)
  end

  def asset
    Asset.find_by(asset_id: asset_key&.asset_id) if asset_key.present?
  end
end
