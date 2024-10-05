class Customer < ApplicationRecord
    has_many :sourceMemorials, class_name: "Memorial", foreign_key: "sourceCustomer_id"
    has_many :needMemorials, class_name: "Memorial", foreign_key: "needCustomer_id"
end
