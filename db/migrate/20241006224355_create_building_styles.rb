class CreateBuildingStyles < ActiveRecord::Migration[7.2]
  def change
    create_table :building_styles, id: :string do |t|
      t.references :localize, null: false, type: :string, foreign_key: { to_table: :localize_data }, index: true
      t.decimal :version, precision: 10, scale: 2

      t.timestamps
    end
    add_index :building_styles, :version
  end
end
