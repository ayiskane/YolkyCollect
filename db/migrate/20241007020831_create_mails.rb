class CreateMails < ActiveRecord::Migration[7.2]
  def change
    create_table :mails do |t|
      t.integer :star
      t.integer :need_star
      t.decimal :prob

      t.integer :group_index
      t.references :mail_group, foreign_key: { to_table: :mail_groups }, index: true
      t.references :mail_group_customer, type: :string, foreign_key: { to_table: :customers }, index: true

      t.boolean :is_food
      t.references :food, type: :string, foreign_key: { to_table: :foods }, index: true

      t.string :need_employee
      t.string :need_order

      t.string :need_customer
      t.string :need_mail
      t.string :need_items

      t.boolean :is_c_card
      t.string :carry_cus_or
      t.boolean :christmas
      t.string :festival_key
      t.float :festival_weight

      t.boolean :hedwig_skip
      t.boolean :hedwig_tutorial
      t.boolean :is_inland_only
      t.boolean :is_community

      t.boolean :is_limit
      t.boolean :is_repeat
      t.float :out_off_day_prob


      t.date :start_day
      t.string :story_dengmi
      t.string :story_end_key
      t.string :story_festival_key
      t.string :story_need_employee_lv_employee
      t.integer :story_need_employee_lv_lv
      t.float :weight
      t.string :story_start_key
      t.float :story_weight

      t.decimal :version, precision: 10, scale: 2
      t.timestamps
    end
  end
end
