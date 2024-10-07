class CreateFoods < ActiveRecord::Migration[7.2]
  def change
    create_table :foods, id: :string do |t|
      t.integer :cost
      t.integer :cook_time

      t.integer :food_order_customer_group
      t.decimal :food_order_factor
      t.references :need_customer, type: :string, foreign_key: { to_table: :customers }, index: true
      t.string :need_mail
      t.string :need_memorial
      t.string :need_order
      t.string :need_booth
      t.integer :need_star

      t.integer :lv_1_income
      t.integer :lv_1_need_ad_lv
      t.string :lv_1_need_building
      t.string :lv_1_need_mail
      t.integer :lv_1_need_star
      t.integer :lv_2_income
      t.string :lv_2_need_building
      t.string :lv_2_need_mail
      t.integer :lv_2_need_star
      t.integer :lv_3_income
      t.string :lv_3_need_building
      t.string :lv_3_need_mail
      t.integer :lv_3_need_star

      t.decimal :version, precision: 10, scale: 2
      t.timestamps
    end
    add_index :foods, :cost
    add_index :foods, :cook_time
    add_index :foods, :food_order_customer_group
    add_index :foods, :food_order_factor
    add_index :foods, :need_mail
    add_index :foods, :need_memorial
    add_index :foods, :need_order
    add_index :foods, :need_booth
    add_index :foods, :need_star
    add_index :foods, :lv_1_income
    add_index :foods, :lv_1_need_ad_lv
    add_index :foods, :lv_1_need_building
    add_index :foods, :lv_1_need_mail
    add_index :foods, :lv_1_need_star
    add_index :foods, :lv_2_income
    add_index :foods, :lv_2_need_building
    add_index :foods, :lv_2_need_mail
    add_index :foods, :lv_2_need_star
    add_index :foods, :lv_3_income
    add_index :foods, :lv_3_need_building
    add_index :foods, :lv_3_need_mail
    add_index :foods, :lv_3_need_star
    add_index :foods, :version
  end
end
