class CreateAreas < ActiveRecord::Migration[7.2]
  def change
    create_table :areas, id: :integer do |t|
      t.string :area_type
      t.string :scene
      t.string :name
    end
    add_index :areas, :id
    add_index :areas, :area_type
    add_index :areas, :scene
    add_index :areas, :name
  end
end
