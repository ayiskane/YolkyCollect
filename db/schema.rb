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

ActiveRecord::Schema[7.2].define(version: 2024_10_07_211233) do
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

  create_table "action_text_rich_texts", force: :cascade do |t|
    t.string "name", null: false
    t.text "body"
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["record_type", "record_id", "name"], name: "index_action_text_rich_texts_uniqueness", unique: true
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "areas", force: :cascade do |t|
    t.string "area"
    t.string "name"
    t.string "scene"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area"], name: "index_areas_on_area"
    t.index ["name"], name: "index_areas_on_name"
    t.index ["scene"], name: "index_areas_on_scene"
  end

  create_table "assets", id: :string, force: :cascade do |t|
    t.string "asset_id", null: false
    t.string "url", null: false
    t.decimal "version", precision: 10, scale: 2, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["asset_id"], name: "index_assets_on_asset_id"
    t.index ["url"], name: "index_assets_on_url"
    t.index ["version"], name: "index_assets_on_version"
  end

  create_table "building_groups", id: :string, force: :cascade do |t|
    t.string "localize_id", null: false
    t.integer "index"
    t.bigint "area_id"
    t.index ["area_id"], name: "index_building_groups_on_area_id"
    t.index ["index"], name: "index_building_groups_on_index"
    t.index ["localize_id"], name: "index_building_groups_on_localize_id"
  end

  create_table "building_styles", id: :string, force: :cascade do |t|
    t.string "localize_id", null: false
    t.decimal "version", precision: 10, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["localize_id"], name: "index_building_styles_on_localize_id"
    t.index ["version"], name: "index_building_styles_on_version"
  end

  create_table "customer_groups", force: :cascade do |t|
    t.string "localize_id", null: false
    t.index ["localize_id"], name: "index_customer_groups_on_localize_id"
  end

  create_table "flower_types", id: :string, force: :cascade do |t|
    t.string "localize_id", null: false
    t.string "building_group_id"
    t.index ["building_group_id"], name: "index_flower_types_on_building_group_id"
    t.index ["localize_id"], name: "index_flower_types_on_localize_id"
  end

  create_table "item_types", id: :string, force: :cascade do |t|
    t.string "localize_id"
    t.string "asset_id"
    t.index ["asset_id"], name: "index_item_types_on_asset_id"
    t.index ["localize_id"], name: "index_item_types_on_localize_id"
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

  create_table "mail_groups", force: :cascade do |t|
    t.string "localize_id", null: false
    t.decimal "version", precision: 10, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["localize_id"], name: "index_mail_groups_on_localize_id"
    t.index ["version"], name: "index_mail_groups_on_version"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.string "tags"
    t.boolean "show", default: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.boolean "admin", default: false
    t.string "provider", null: false
    t.string "uid"
    t.string "username", null: false
    t.string "image"
    t.string "email", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "building_groups", "areas"
  add_foreign_key "building_groups", "localize_data", column: "localize_id"
  add_foreign_key "building_styles", "localize_data", column: "localize_id"
  add_foreign_key "customer_groups", "localize_data", column: "localize_id"
  add_foreign_key "flower_types", "building_groups"
  add_foreign_key "flower_types", "localize_data", column: "localize_id"
  add_foreign_key "item_types", "assets"
  add_foreign_key "item_types", "localize_data", column: "localize_id"
  add_foreign_key "mail_groups", "localize_data", column: "localize_id"
  add_foreign_key "posts", "users"
end
