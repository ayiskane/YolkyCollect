class CreateBuildings < ActiveRecord::Migration[7.2]
  def change
    create_table :buildings, id: false, primary_key: [ :building_id, :building_group ] do |t|
      t.string :building_id
      t.references :building_group, null: false, type: :string, foreign_key: { to_table: :building_groups }, index: true
      t.references :localize, type: :string, foreign_key: { to_table: :localize_data }, index: true
      t.integer :index
      t.references :building_style, null: false, type: :string, foreign_key: { to_table: :building_styles }, index: true

      t.integer :cost
      t.string :cost_type
      t.integer :star
      t.integer :income
      t.integer :tip
      t.integer :tip_cap
      t.integer :gen_coin
      t.integer :gen_plate

      t.decimal :cook_time_factor, precision: 10, scale: 2

      t.references :need_customer, type: :string, foreign_key: { to_table: :customers }, index: true
      t.references :need_food, type: :string, foreign_key: { to_table: :foods }, index: true
      t.references :need_mail, type: :string, foreign_key: { to_table: :mails }, index: true
      t.references :need_egg, type: :string, foreign_key: { to_table: :eggs }, index: true
      t.integer :need_egg_affection_lv
      t.integer :need_star
      t.integer :need_mewchelin_lv
      t.string :battle_order

      t.integer :capsule_lv
      t.integer :capsule_daily_count

      t.integer :flower_lv
      t.integer :flower_view_count

      t.integer :wish_level
      t.boolean :wish_one_touch
      t.integer :wish_award_count
      t.integer :wish_free_times
      t.integer :wish_extra_reward

      t.integer :takeout_order_limit
      t.integer :takeout_container_type
      t.integer :takeout_container_capacity

      t.string :limit_buy_activity
      t.string :limit_activity
      t.string :limit_building_type
      t.string :activity

      t.decimal :version, precision: 10, scale: 2
      t.timestamps
    end
    add_index :buildings, :building_id
    add_index :buildings, :index
    add_index :buildings, :cost
    add_index :buildings, :cost_type
    add_index :buildings, :star
    add_index :buildings, :income
    add_index :buildings, :tip
    add_index :buildings, :tip_cap
    add_index :buildings, :gen_coin
    add_index :buildings, :gen_plate
    add_index :buildings, :cook_time_factor
    add_index :buildings, :need_customer
    add_index :buildings, :need_food
    add_index :buildings, :need_mail
    add_index :buildings, :need_egg
    add_index :buildings, :need_egg_affection_lv
    add_index :buildings, :need_star
    add_index :buildings, :need_mewchelin_lv
    add_index :buildings, :battle_order
    add_index :buildings, :capsule_lv
    add_index :buildings, :capsule_daily_count
    add_index :buildings, :flower_lv
    add_index :buildings, :flower_view_count
    add_index :buildings, :wish_level
    add_index :buildings, :wish_one_touch
    add_index :buildings, :wish_award_count
    add_index :buildings, :wish_free_times
    add_index :buildings, :wish_extra_reward
    add_index :buildings, :takeout_order_limit
    add_index :buildings, :takeout_container_type
    add_index :buildings, :takeout_container_capacity
    add_index :buildings, :limit_buy_activity
    add_index :buildings, :limit_activity
    add_index :buildings, :limit_building_type
    add_index :buildings, :activity
    add_index :buildings, :version
  end
end
