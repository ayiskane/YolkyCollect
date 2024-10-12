class CreateItemTypes < ActiveRecord::Migration[7.2]
  def change
    create_table :item_types, id: :string do |t|
      t.references :localize, type: :string, foreign_key: { to_table: :localize_data }, index: true
      t.references :asset, type: :string, foreign_key: { to_table: :assets }, index: true
    end
  end
end
