class CreateStaffLevels < ActiveRecord::Migration[7.2]
  def change
    create_table :staff_levels, id: false do |t|
      t.references :staff, type: :string, null: false, foreign_key: { to_table: :staffs }
      t.integer :level, null: false
      t.integer :need_coin, null: false
      t.integer :gain_star, null: false
      t.time :need_time, null: false
      t.time :work_time
      t.time :rest_time
      t.integer :speed
      t.decimal :promo_time, precision: 3, scale: 1
      t.integer :gain_customer
      t.time :sweep_time
      t.integer :gain_tips
      t.integer :cook_speed
      t.time :cook_time
      t.integer :gain_coin_per_minute
      t.integer :speed_boost
      t.time :frequency
      t.decimal :driveout_time, precision: 3, scale: 1
      t.time :min_return_time
      t.time :max_return_time
      t.integer :grow_speed
      t.time :grow_time
      t.integer :gain_plate
      t.integer :catch_chance
      t.integer :gain_bait
      t.integer :delivery_order_limit
      t.integer :delivery_efficiency
      t.integer :gain_order_limit
      t.integer :gain_like_chance
      t.integer :gain_like
      t.integer :min_drop
      t.integer :max_drop

      t.timestamps
    end
  end
end
