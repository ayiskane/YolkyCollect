class Food < ApplicationRecord
    has_many :customer_need_foods
    has_many :customers, through: :customer_need_foods

    has_many :customer_order_foods
    has_many :customers, through: :customer_order_foods
end
