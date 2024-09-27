class CreateAssetKeys < ActiveRecord::Migration[7.2]
  def change
    create_table :asset_keys, id: false do |t|
      t.string :id, null: false
      t.string :img1, null: false
      t.string :img2, null: true
      t.string :img3, null: true

      t.timestamps
    end
    add_index :asset_keys, :id
    add_index :asset_keys, :img1
    add_index :asset_keys, :img2
    add_index :asset_keys, :img3
  end
end
