class CreateFlowerTypes < ActiveRecord::Migration[7.2]
  def change
    create_table :flower_types, id: :string do |t|
      t.references :localize, null: false, type: :string, foreign_key: { to_table: :localize_data }, index: true
      t.references :building_group, type: :string, foreign_key: { to_table: :building_groups }, index: true
    end
  end
end
