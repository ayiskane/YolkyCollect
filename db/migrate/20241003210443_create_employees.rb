class CreateEmployees < ActiveRecord::Migration[7.2]
  def change
    create_table :employees, id: :string do |t|
      t.timestamps
    end
    add_index :employees, :id, unique: true
  end
end
