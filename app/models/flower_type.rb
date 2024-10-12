class FlowerType < ApplicationRecord
    has_many :flowers
    belongs_to :building_group
    belongs_to :localize, class_name: "LocalizeData", foreign_key: "localize_id"
end
