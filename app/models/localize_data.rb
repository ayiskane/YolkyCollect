class LocalizeData < ApplicationRecord
    has_many :employees, foreign_key: :id, primary_key: :id
end
