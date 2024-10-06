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

ActiveRecord::Schema[7.2].define(version: 2024_09_26_210132) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "areas", id: :string, force: :cascade do |t|
    t.string "name_en", null: false
    t.string "name_cn", null: false
    t.string "name_cn2", null: false
    t.string "name_jp", null: false
    t.string "name_kr", null: false
    t.index ["name_cn"], name: "index_areas_on_name_cn"
    t.index ["name_cn2"], name: "index_areas_on_name_cn2"
    t.index ["name_en"], name: "index_areas_on_name_en"
    t.index ["name_jp"], name: "index_areas_on_name_jp"
    t.index ["name_kr"], name: "index_areas_on_name_kr"
  end

  create_table "asset_keys", id: false, force: :cascade do |t|
    t.string "id", null: false
    t.string "img1", null: false
    t.string "img2"
    t.string "img3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id"], name: "index_asset_keys_on_id"
    t.index ["img1"], name: "index_asset_keys_on_img1"
    t.index ["img2"], name: "index_asset_keys_on_img2"
    t.index ["img3"], name: "index_asset_keys_on_img3"
  end

  create_table "assets", id: false, force: :cascade do |t|
    t.string "id", null: false
    t.string "uuid", null: false
    t.string "url", null: false
    t.decimal "version", precision: 5, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id", "url"], name: "index_assets_on_id_and_url", unique: true
    t.index ["url"], name: "index_assets_on_url"
    t.index ["version"], name: "index_assets_on_version"
  end

  create_table "currencies", id: :string, force: :cascade do |t|
    t.string "name"
    t.integer "costtype"
    t.index ["costtype"], name: "index_currencies_on_costtype"
    t.index ["id"], name: "index_currencies_on_id"
    t.index ["name"], name: "index_currencies_on_name"
  end

  create_table "localize_data", id: :string, force: :cascade do |t|
    t.string "en"
    t.string "cn"
    t.string "cn2"
    t.string "jp"
    t.string "kr"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cn"], name: "index_localize_data_on_cn"
    t.index ["cn2"], name: "index_localize_data_on_cn2"
    t.index ["en"], name: "index_localize_data_on_en"
    t.index ["id"], name: "index_localize_data_on_id", unique: true
    t.index ["jp"], name: "index_localize_data_on_jp"
    t.index ["kr"], name: "index_localize_data_on_kr"
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
end
