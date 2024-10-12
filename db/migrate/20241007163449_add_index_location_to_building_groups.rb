class AddIndexLocationToBuildingGroups < ActiveRecord::Migration[7.2]
  def change
    add_column :building_groups, :index, :integer
    add_reference :building_groups, :area, foreign_key: { to_table: :areas }, index: true
    add_index :building_groups, :index
  end
end
