class CreateTakeoutContainerTypes < ActiveRecord::Migration[7.2]
  def change
    create_table :takeout_container_types do |t|
      t.references :localize, null: false, type: :string, foreign_key: { to_table: :localize_data }, index: true
      t.timestamps
    end
  end
end
