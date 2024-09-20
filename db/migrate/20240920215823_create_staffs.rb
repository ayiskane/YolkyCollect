class CreateStaffs < ActiveRecord::Migration[7.2]
  def change
    create_table :staffs, id: :string do |t|
      t.references :area, type: :string, null: false, foreign_key: { to_table: :areas }
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

      t.timestamps
    end
    add_index :staffs, :name_en
    add_index :staffs, :name_cn
    add_index :staffs, :name_cn2
    add_index :staffs, :name_jp
    add_index :staffs, :name_kr
  end
end
