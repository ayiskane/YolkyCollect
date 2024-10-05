class Memorial < ApplicationRecord
    belongs_to :sourceCustomer, class_name: "Customer", foreign_key: "sourceCustomer_id", optional: true
    belongs_to :needCustomer, class_name: "Customer", foreign_key: "needCustomer_id", optional: true
end
