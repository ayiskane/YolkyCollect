class CreateFoods < ActiveRecord::Migration[7.2]
  def change
    create_table :foods, id: :string do |t|
      t.references :food_type, type: :string, foreign_key: { to_table: :food_types }
      t.string :name_en, null: false
      t.string :desc_en
      t.string :name_cn, null: false
      t.string :desc_cn
      t.string :name_cn2, null: false
      t.string :desc_cn2
      t.string :name_jp, null: false
      t.string :desc_jp
      t.string :name_kr, null: false
      t.string :desc_kr
      t.string :icon
      t.time :cook_time
      t.integer :max_gain_coin
      t.integer :need_star
      t.references :cost_type, type: :string, foreign_key: { to_table: :currencies }
      t.integer :need_cost
      t.integer :max_gain_bell
      t.integer :min_gain_bell
      t.integer :need_like
      t.references :need_food, type: :string, foreign_key: { to_table: :foods }
      t.references :need_building, type: :string, foreign_key: { to_table: :buildings }
      t.references :need_mail, type: :string, foreign_key: { to_table: :mails }
      t.references :need_customer, type: :string, foreign_key: { to_table: :customers }
      t.references :need_booth, type: :string, foreign_key: { to_table: :booths }
      t.references :need_order, type: :string, foreign_key: { to_table: :orders }

      t.string :patch
      t.timestamps
    end
    add_index :foods, :name_en
    add_index :foods, :name_cn
    add_index :foods, :name_cn2
    add_index :foods, :name_jp
    add_index :foods, :name_kr
    add_index :foods, :patch
    add_index :foods, :icon
  end
end
