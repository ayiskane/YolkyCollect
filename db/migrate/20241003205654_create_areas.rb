class CreateAreas < ActiveRecord::Migration[7.2]
  def change
    create_table :areas, id: :string do |t|
      t.string :area
      t.string :localize, type: :string, foreign_key: { to_table: :localize_data }, index: true
      t.string :scene
      t.timestamps
    end

    add_index :areas, :area
    add_index :areas, :name
    add_index :areas, :scene
  end
end
