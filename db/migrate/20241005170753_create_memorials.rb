class CreateMemorials < ActiveRecord::Migration[7.2]
  def change
    create_table :memorials, id: :string do |t|
      t.string :source, null: false
      t.integer :needStar
      t.integer :shareCoin
      t.integer :needPlayDay
      t.string :needCustomerId
      t.string :needCustomerCnt
      t.boolean :isSecretStore
      t.string :assetKeyId
      t.float :version
      t.timestamps
    end
    add_index :memorials, :source
    add_index :memorials, :needStar
    add_index :memorials, :shareCoin
    add_index :memorials, :needPlayDay
    add_index :memorials, :needCustomerId
    add_index :memorials, :needCustomerCnt
    add_index :memorials, :isSecretStore
    add_index :memorials, :assetKeyId
    add_index :memorials, :version
  end
end
