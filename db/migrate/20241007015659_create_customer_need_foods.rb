class CreateCustomerNeedFoods < ActiveRecord::Migration[7.2]
  def change
    create_table :customer_need_foods do |t|
      t.references :customer, type: :string,  null: false, foreign_key: true, index: true
      t.references :food,  type: :string, foreign_key: true, index: true

      t.timestamps
    end
    add_index :customer_need_foods, [ :customer_id, :food_id ], unique: true
  end
end