class AddDeviseFieldsToUsers < ActiveRecord::Migration[7.2]
  def change
    change_table :users do |t|
      t.string :encrypted_password, null: false, default: ""
      t.string :reset_password_token
      t.datetime :reset_password_sent_at
      t.datetime :remember_created_at
      # Add any other Devise columns if necessary
    end
  end
end
