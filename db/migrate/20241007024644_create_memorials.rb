class CreateMemorials < ActiveRecord::Migration[7.2]
  def change
    create_table :memorials do |t|
      t.references :localize, type: :string, foreign_key: { to_table: :localize_data }, index: true

      t.decimal :version, precision: 10, scale: 2
      t.references :sourceCustomer, type: :string, foreign_key: { to_table: :customers }, index: true
      t.integer :needStar
      t.integer :shareCoin
      t.integer :needPlayDay
      t.references :needCustomer, type: :string, foreign_key: { to_table: :customers }, index: true
      t.string :needCustomerCnt
      t.boolean :isSecretStore
      t.string :assetKeyId
      t.float :version
      t.timestamps
    end

    add_index :memorials, :needStar
    add_index :memorials, :shareCoin
    add_index :memorials, :needPlayDay
    add_index :memorials, :needCustomerCnt
    add_index :memorials, :isSecretStore
    add_index :memorials, :assetKeyId
    add_index :memorials, :version
  end
end
