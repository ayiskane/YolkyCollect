class CreateBuildingGroups < ActiveRecord::Migration[7.2]
  def change
    create_table :building_groups, id: :string do |t|
      t.references :localize, null: false, type: :string, foreign_key: { to_table: :localize_data }, index: true
    end
  end
end
