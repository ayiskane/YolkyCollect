class CreateLocalizeData < ActiveRecord::Migration[7.2]
  def change
    create_table :localize_data, id: :string do |t|
      t.string :en
      t.string :cn
      t.string :cn2
      t.string :jp
      t.string :kr
      t.timestamps
    end
    add_index :localize_data, :id, unique: true
    add_index :localize_data, :en
    add_index :localize_data, :cn
    add_index :localize_data, :cn2
    add_index :localize_data, :jp
    add_index :localize_data, :kr
  end
end
