# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2024_09_24_230732) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "areas", id: :string, force: :cascade do |t|
    t.string "name_en", null: false
    t.string "name_cn", null: false
    t.string "name_cn2", null: false
    t.string "name_jp", null: false
    t.string "name_kr", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name_cn"], name: "index_areas_on_name_cn"
    t.index ["name_cn2"], name: "index_areas_on_name_cn2"
    t.index ["name_en"], name: "index_areas_on_name_en"
    t.index ["name_jp"], name: "index_areas_on_name_jp"
    t.index ["name_kr"], name: "index_areas_on_name_kr"
  end

  create_table "currencies", id: :string, force: :cascade do |t|
    t.string "name_en", null: false
    t.string "name_cn", null: false
    t.string "name_cn2", null: false
    t.string "name_jp", null: false
    t.string "name_kr", null: false
    t.string "icon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["icon"], name: "index_currencies_on_icon"
    t.index ["name_cn"], name: "index_currencies_on_name_cn"
    t.index ["name_cn2"], name: "index_currencies_on_name_cn2"
    t.index ["name_en"], name: "index_currencies_on_name_en"
    t.index ["name_jp"], name: "index_currencies_on_name_jp"
    t.index ["name_kr"], name: "index_currencies_on_name_kr"
  end

  create_table "events", id: :string, force: :cascade do |t|
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "food_types", id: :string, force: :cascade do |t|
    t.string "area_id", null: false
    t.string "name_en", null: false
    t.string "name_cn", null: false
    t.string "name_cn2", null: false
    t.string "name_jp", null: false
    t.string "name_kr", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_id"], name: "index_food_types_on_area_id"
    t.index ["name_cn"], name: "index_food_types_on_name_cn"
    t.index ["name_cn2"], name: "index_food_types_on_name_cn2"
    t.index ["name_en"], name: "index_food_types_on_name_en"
    t.index ["name_jp"], name: "index_food_types_on_name_jp"
    t.index ["name_kr"], name: "index_food_types_on_name_kr"
  end

  create_table "mail_categories", id: :string, force: :cascade do |t|
    t.string "name_en", null: false
    t.string "name_cn", null: false
    t.string "name_cn2", null: false
    t.string "name_jp", null: false
    t.string "name_kr", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name_cn"], name: "index_mail_categories_on_name_cn"
    t.index ["name_cn2"], name: "index_mail_categories_on_name_cn2"
    t.index ["name_en"], name: "index_mail_categories_on_name_en"
    t.index ["name_jp"], name: "index_mail_categories_on_name_jp"
    t.index ["name_kr"], name: "index_mail_categories_on_name_kr"
  end

  create_table "mail_groups", id: :string, force: :cascade do |t|
    t.string "name_en", null: false
    t.string "name_cn", null: false
    t.string "name_cn2", null: false
    t.string "name_jp", null: false
    t.string "name_kr", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name_cn"], name: "index_mail_groups_on_name_cn"
    t.index ["name_cn2"], name: "index_mail_groups_on_name_cn2"
    t.index ["name_en"], name: "index_mail_groups_on_name_en"
    t.index ["name_jp"], name: "index_mail_groups_on_name_jp"
    t.index ["name_kr"], name: "index_mail_groups_on_name_kr"
  end

  create_table "staff_levels", id: false, force: :cascade do |t|
    t.string "staff_id", null: false
    t.integer "level", null: false
    t.integer "need_coin", null: false
    t.integer "gain_star", null: false
    t.time "need_time", null: false
    t.time "work_time"
    t.time "rest_time"
    t.integer "speed"
    t.decimal "promo_time", precision: 3, scale: 1
    t.integer "gain_customer"
    t.time "sweep_time"
    t.integer "gain_tips"
    t.integer "cook_speed"
    t.time "cook_time"
    t.integer "gain_coin_per_minute"
    t.integer "speed_boost"
    t.time "frequency"
    t.decimal "driveout_time", precision: 3, scale: 1
    t.time "min_return_time"
    t.time "max_return_time"
    t.integer "grow_speed"
    t.time "grow_time"
    t.integer "gain_plate"
    t.integer "catch_chance"
    t.integer "gain_bait"
    t.integer "delivery_order_limit"
    t.integer "delivery_efficiency"
    t.integer "gain_order_limit"
    t.integer "gain_like_chance"
    t.integer "gain_like"
    t.integer "min_drop"
    t.integer "max_drop"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["staff_id"], name: "index_staff_levels_on_staff_id"
  end

  create_table "staffs", id: :string, force: :cascade do |t|
    t.string "area_id", null: false
    t.string "name_en", null: false
    t.string "desc_en"
    t.string "name_cn", null: false
    t.string "desc_cn"
    t.string "name_cn2", null: false
    t.string "desc_cn2"
    t.string "name_jp", null: false
    t.string "desc_jp"
    t.string "name_kr", null: false
    t.string "desc_kr"
    t.string "icon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_id"], name: "index_staffs_on_area_id"
    t.index ["icon"], name: "index_staffs_on_icon"
    t.index ["name_cn"], name: "index_staffs_on_name_cn"
    t.index ["name_cn2"], name: "index_staffs_on_name_cn2"
    t.index ["name_en"], name: "index_staffs_on_name_en"
    t.index ["name_jp"], name: "index_staffs_on_name_jp"
    t.index ["name_kr"], name: "index_staffs_on_name_kr"
  end

  create_table "users", force: :cascade do |t|
    t.string "provider"
    t.string "uid"
    t.string "username"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
  end

  add_foreign_key "food_types", "areas"
  add_foreign_key "staff_levels", "staffs"
  add_foreign_key "staffs", "areas"
end
