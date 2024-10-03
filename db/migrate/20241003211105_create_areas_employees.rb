class CreateAreasEmployees < ActiveRecord::Migration[7.2]
  def change
    create_table :areas_employees, id: false do |t|
      t.string :employee_id
      t.references :area, foreign_key: true
    end

    add_index :areas_employees, [ :employee_id, :area_id ], unique: true
  end
end
