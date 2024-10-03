class CreateAreas < ActiveRecord::Migration[7.2]
  def change
    create_table :areas do |t|
      t.string :area
      t.string :name
      t.string :scene
      t.timestamps
    end

    add_index :areas, :id, unique: true
    add_index :areas, :area
    add_index :areas, :name
    add_index :areas, :scene
  end
end
