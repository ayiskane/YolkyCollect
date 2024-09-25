class CreateUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :users do |t|
      t.string :provider
      t.string :uid
      t.string :username
      t.string :image

      t.timestamps
    end
  end
end
