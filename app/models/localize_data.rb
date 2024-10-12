class LocalizeData < ApplicationRecord
    has_many :building_styles
    has_many :building_groups
    has_many :customer_groups
    has_many :flowers, foreign_key: "localize_id"
    has_many :flower_types, foreign_key: "localize_id"
end
