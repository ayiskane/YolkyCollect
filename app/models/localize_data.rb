class LocalizeData < ApplicationRecord
    has_many :building_styles
    has_many :building_groups
    has_many :customer_groups
end
