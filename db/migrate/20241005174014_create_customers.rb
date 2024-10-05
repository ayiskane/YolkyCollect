class CreateCustomers < ActiveRecord::Migration[7.2]
  def change
    create_table :customers, id: :string do |t|
      t.integer :needStar
      t.integer :shareCoin
      t.boolean :isDoll
      t.string :needCustomerId
      t.boolean :hasOrder
      t.string :assetKeyId
      t.float :version
      t.timestamps
    end

    add_index :customers, :needStar
    add_index :customers, :shareCoin
    add_index :customers, :isDoll
    add_index :customers, :needCustomerId
    add_index :customers, :hasOrder
    add_index :customers, :assetKeyId
    add_index :customers, :version
  end
end
