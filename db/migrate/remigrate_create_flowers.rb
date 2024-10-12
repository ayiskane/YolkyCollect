class CreateFlowers < ActiveRecord::Migration[7.2]
  def change
    create_table :flowers, id: :string do |t|
      t.references :localize, null: false, type: :string, foreign_key: { to_table: :localize_data }, index: true
      t.references :flower_types, null: false, type: :string, foreign_key: { to_table: :flower_types }, index: true
      t.integer :cost
      t.integer :time
      t.integer :hp
      t.decimal :award_star_min_value
      t.integer :award_star_min_weight
      t.decimal :award_star_max_value
      t.integer :award_star_max_weight
      t.integer :capsule_weight
      t.decimal :wish_prob
      t.timestamps
    end
    add_index :flowers, :cost
    add_index :flowers, :time
    add_index :flowers, :hp
    add_index :flowers, :award_star_min_value
    add_index :flowers, :award_star_min_weight
    add_index :flowers, :award_star_max_value
    add_index :flowers, :award_star_max_weight
    add_index :flowers, :capsule_weight
    add_index :flowers, :wish_prob
  end
end
