class CreateFoodTypes < ActiveRecord::Migration[7.2]
  def change
    create_table :food_types, id: :string do |t|
      t.references :area, type: :string, null: false, foreign_key: { to_table: :areas }
      t.string :name_en, null: false
      t.string :name_cn, null: false
      t.string :name_cn2, null: false
      t.string :name_jp, null: false
      t.string :name_kr, null: false
      t.timestamps
    end
    add_index :food_types, :name_en
    add_index :food_types, :name_cn
    add_index :food_types, :name_cn2
    add_index :food_types, :name_jp
    add_index :food_types, :name_kr
  end
end
