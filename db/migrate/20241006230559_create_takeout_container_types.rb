class CreateTakeoutContainerTypes < ActiveRecord::Migration[7.2]
  def change
    create_table :takeout_container_types do |t|
      t.timestamps
    end
  end
end
