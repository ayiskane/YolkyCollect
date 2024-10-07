class CreateMailGroups < ActiveRecord::Migration[7.2]
  def change
    create_table :mail_groups do |t|
      t.references :localize, null: false, type: :string, foreign_key: { to_table: :localize_data }, index: true
      t.decimal :version, precision: 10, scale: 2
      t.timestamps
    end
    add_index :mail_groups, :version
  end
end
