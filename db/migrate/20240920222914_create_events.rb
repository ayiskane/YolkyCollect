class CreateEvents < ActiveRecord::Migration[7.2]
  def change
    create_table :events, id: :string do |t|
      t.string :name_en, null: false
      t.string :name_cn, null: false
      t.string :name_cn2, null: false
      t.string :name_jp, null: false
      t.string :name_kr, null: false
      t.references :linked_event_id, type: :string, foreign_key: { to_table: :events }
      t.integer :start_year
      t.string :start_time, null: false
      t.string :end_time, null: false
      t.boolean :limit_year
      t.boolean :repeat_year

      t.timestamps
    end
  end
end
