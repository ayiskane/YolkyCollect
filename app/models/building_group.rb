class BuildingGroup < ApplicationRecord
    has_many :buildings, foreign_key: :building_group_id
end
