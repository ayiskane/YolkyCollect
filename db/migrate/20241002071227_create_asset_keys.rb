class CreateAssetKeys < ActiveRecord::Migration[7.2]
  def change
    create_table :asset_keys, id: false do |t|
      t.string :id, null: false
      t.string :asset_id, null: false
      t.integer :order, null: false
      t.decimal :version, precision: 10, scale: 2, null: false

      t.timestamps
    end
    add_index :asset_keys, :id
    add_index :asset_keys, :asset_id
    add_index :asset_keys, :order
    add_index :asset_keys, :version
  end
end
