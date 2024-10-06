class BuildingStyle < ApplicationRecord
    # Association indicating that one building style can have many buildings
    has_many :buildings, foreign_key: :building_style_id
end
