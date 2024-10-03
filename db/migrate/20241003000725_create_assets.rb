class CreateAssets < ActiveRecord::Migration[7.2]
  def change
    create_table :assets do |t|
      t.string :asset_id, null: false
      t.string :uuid, null: false
      t.string :url, null: false
      t.decimal :version, precision: 10, scale: 2, null: false

      t.timestamps
    end
    add_index :assets, :asset_id
    add_index :assets, :url
    add_index :assets, :version
  end
end
