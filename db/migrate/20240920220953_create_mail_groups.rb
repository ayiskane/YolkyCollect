class CreateMailGroups < ActiveRecord::Migration[7.2]
  def change
    create_table :mail_groups, id: :string do |t|
      t.string :name_en, null: false
      t.string :name_cn, null: false
      t.string :name_cn2, null: false
      t.string :name_jp, null: false
      t.string :name_kr, null: false
      t.timestamps
    end
    add_index :mail_groups, :name_en
    add_index :mail_groups, :name_cn
    add_index :mail_groups, :name_cn2
    add_index :mail_groups, :name_jp
    add_index :mail_groups, :name_kr
  end
end

# individual, series
