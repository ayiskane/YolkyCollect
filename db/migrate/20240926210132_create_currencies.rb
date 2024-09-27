class CreateCurrencies < ActiveRecord::Migration[7.2]
  def change
    create_table :currencies, id: :string do |t|
      t.string :name
      t.integer :costtype, null: true
    end
    add_index :currencies, :id
    add_index :currencies, :name
    add_index :currencies, :costtype
  end
end
