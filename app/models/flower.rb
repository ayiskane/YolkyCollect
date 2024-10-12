class Flower < ApplicationRecord
    belongs_to :flower_type
    belongs_to :localize, class_name: "LocalizeData", foreign_key: "localize_id"
end
