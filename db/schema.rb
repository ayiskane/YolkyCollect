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
  create_schema "auth"
  create_schema "extensions"
  create_schema "graphql"
  create_schema "graphql_public"
  create_schema "pgbouncer"
  create_schema "pgsodium"
  create_schema "pgsodium_masks"
  create_schema "realtime"
  create_schema "storage"
  create_schema "vault"

  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_graphql"
  enable_extension "pg_stat_statements"
  enable_extension "pgcrypto"
  enable_extension "pgjwt"
  enable_extension "pgsodium"
  enable_extension "plpgsql"
  enable_extension "supabase_vault"
  enable_extension "uuid-ossp"

  create_table "areas", id: :serial, force: :cascade do |t|
    t.string "area_type"
    t.string "scene"
    t.string "name"
    t.index ["area_type"], name: "index_areas_on_area_type"
    t.index ["id"], name: "index_areas_on_id"
    t.index ["name"], name: "index_areas_on_name"
    t.index ["scene"], name: "index_areas_on_scene"
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
end
