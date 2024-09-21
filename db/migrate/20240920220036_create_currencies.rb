class CreateCurrencies < ActiveRecord::Migration[7.2]
  def change
    create_table :currencies, id: :string do |t|
      t.string :name_en, null: false
      t.string :name_cn, null: false
      t.string :name_cn2, null: false
      t.string :name_jp, null: false
      t.string :name_kr, null: false
      t.string :icon

      t.timestamps
    end
    add_index :currencies, :name_en
    add_index :currencies, :name_cn
    add_index :currencies, :name_cn2
    add_index :currencies, :name_jp
    add_index :currencies, :name_kr
    add_index :currencies, :icon
  end
end
