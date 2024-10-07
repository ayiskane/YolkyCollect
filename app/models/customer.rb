class Customer < ApplicationRecord
    has_many :customer_order_foods
    has_many :foods_ordered, through: :customer_order_foods, source: :food

    has_many :customer_need_foods
    has_many :foods_needed, through: :customer_need_foods, source: :food
end
