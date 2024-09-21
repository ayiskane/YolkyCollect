class CreateMailCategories < ActiveRecord::Migration[7.2]
  def change
    create_table :mail_categories, id: :string do |t|
      t.string :name_en, null: false
      t.string :name_cn, null: false
      t.string :name_cn2, null: false
      t.string :name_jp, null: false
      t.string :name_kr, null: false
      t.timestamps
    end
    add_index :mail_categories, :name_en
    add_index :mail_categories, :name_cn
    add_index :mail_categories, :name_cn2
    add_index :mail_categories, :name_jp
    add_index :mail_categories, :name_kr
  end
end

# Regular mail, Event mail, permission slips
