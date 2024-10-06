class CreateCustomers < ActiveRecord::Migration[7.2]
  def change
    create_table :customers, id: :string do |t|
      t.string  :food_order
      t.integer :need_star
      t.integer :need_ad_lv
      t.string :need_memorial
      t.string :need_customer
      t.string :carry_order

      t.integer :share_coin
      t.decimal :star_prob, precision: 10, scale: 2
      t.integer :star_value
      t.integer :weight

      t.boolean :is_terrace
      t.integer :terrace_need_ad_lv
      t.integer :terrace_times

      t.boolean :is_doll
      t.boolean :is_community
      t.boolean :is_halloween
      t.string :battle_order
      t.string :limit_season
      t.string :limit_activity
      t.string :weight_activity
      t.integer :weight_activity_weight

      t.integer :ability_food_order_times
      t.decimal :ability_cook_time_factor, precision: 10, scale: 2
      t.decimal :ability_coin_crit_prob, precision: 10, scale: 2
      t.integer :ability_coin_crit_factor

      t.string :asset
      t.decimal :version, precision: 10, scale: 2
      t.timestamps
    end
    add_index :customers, :food_order
    add_index :customers, :need_star
    add_index :customers, :need_ad_lv
    add_index :customers, :need_memorial
    add_index :customers, :need_customer
    add_index :customers, :carry_order
    add_index :customers, :share_coin
    add_index :customers, :star_prob
    add_index :customers, :star_value
    add_index :customers, :weight
    add_index :customers, :is_terrace
    add_index :customers, :terrace_need_ad_lv
    add_index :customers, :terrace_times
    add_index :customers, :is_doll
    add_index :customers, :is_community
    add_index :customers, :is_halloween
    add_index :customers, :battle_order
    add_index :customers, :limit_season
    add_index :customers, :limit_activity
    add_index :customers, :weight_activity
    add_index :customers, :weight_activity_weight
    add_index :customers, :ability_food_order_times
    add_index :customers, :ability_cook_time_factor
    add_index :customers, :ability_coin_crit_prob
    add_index :customers, :ability_coin_crit_factor
    add_index :customers, :asset
    add_index :customers, :version
  end
end
