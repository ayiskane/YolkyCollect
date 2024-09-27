class CreateAssets < ActiveRecord::Migration[7.2]
  def change
    create_table :assets, id: false do |t|
      t.string :id, null: false
      t.string :uuid, null: false
      t.string :url, null: false
      t.decimal :version, precision: 5, scale: 2

      t.timestamps
    end

    add_index :assets, [:id, :url], unique: true  # Composite unique index
    add_index :assets, :url
    add_index :assets, :version
  end
end
