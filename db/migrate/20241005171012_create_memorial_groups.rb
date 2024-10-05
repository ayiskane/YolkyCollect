class CreateMemorialGroups < ActiveRecord::Migration[7.2]
  def change
    create_table :memorial_groups, id: :string do |t|
      t.timestamps
    end
    add_index :memorial_groups, :id, unique: true
  end
end
