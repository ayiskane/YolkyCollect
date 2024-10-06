# app/models/employee.rb
class Employee < ApplicationRecord
    has_one :localize_data, foreign_key: :id, primary_key: :id
    has_and_belongs_to_many :areas
end
