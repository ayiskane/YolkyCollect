class Building < ApplicationRecord
    self.primary_keys = :building_id, :building_group

    belongs_to :building_group
    belongs_to :building_style
end
