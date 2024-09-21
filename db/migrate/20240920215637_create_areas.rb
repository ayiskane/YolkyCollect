class CreateAreas < ActiveRecord::Migration[7.2]
  def change
    create_table :areas, id: :string do |t|
      t.string :name_en, null: false
      t.string :name_cn, null: false
      t.string :name_cn2, null: false
      t.string :name_jp, null: false
      t.string :name_kr, null: false

      t.timestamps
    end
    add_index :areas, :name_en
    add_index :areas, :name_cn
    add_index :areas, :name_cn2
    add_index :areas, :name_jp
    add_index :areas, :name_kr
  end
end
