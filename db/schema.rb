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

ActiveRecord::Schema[7.2].define(version: 2024_10_05_174014) do
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
    t.index ["id"], name: "index_areas_on_id", unique: true
    t.index ["name"], name: "index_areas_on_name"
    t.index ["scene"], name: "index_areas_on_scene"
  end

  create_table "areas_employees", id: false, force: :cascade do |t|
    t.string "employee_id"
    t.bigint "area_id"
    t.index ["area_id"], name: "index_areas_employees_on_area_id"
    t.index ["employee_id", "area_id"], name: "index_areas_employees_on_employee_id_and_area_id", unique: true
  end

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "asset_keys", id: false, force: :cascade do |t|
    t.string "id", null: false
    t.string "asset_id", null: false
    t.integer "order", null: false
    t.decimal "version", precision: 10, scale: 2, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["asset_id"], name: "index_asset_keys_on_asset_id"
    t.index ["id"], name: "index_asset_keys_on_id"
    t.index ["order"], name: "index_asset_keys_on_order"
    t.index ["version"], name: "index_asset_keys_on_version"
  end

  create_table "assets", force: :cascade do |t|
    t.string "asset_id", null: false
    t.string "uuid", null: false
    t.string "url", null: false
    t.decimal "version", precision: 10, scale: 2, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["asset_id"], name: "index_assets_on_asset_id"
    t.index ["url"], name: "index_assets_on_url"
    t.index ["version"], name: "index_assets_on_version"
  end

  create_table "customers", id: :string, force: :cascade do |t|
    t.integer "needStar"
    t.integer "shareCoin"
    t.boolean "isDoll"
    t.string "needCustomerId"
    t.boolean "hasOrder"
    t.string "assetKeyId"
    t.float "version"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["assetKeyId"], name: "index_customers_on_assetKeyId"
    t.index ["hasOrder"], name: "index_customers_on_hasOrder"
    t.index ["isDoll"], name: "index_customers_on_isDoll"
    t.index ["needCustomerId"], name: "index_customers_on_needCustomerId"
    t.index ["needStar"], name: "index_customers_on_needStar"
    t.index ["shareCoin"], name: "index_customers_on_shareCoin"
    t.index ["version"], name: "index_customers_on_version"
  end

  create_table "employees", id: :string, force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id"], name: "index_employees_on_id", unique: true
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

  create_table "memorial_groups", id: :string, force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id"], name: "index_memorial_groups_on_id", unique: true
  end

  create_table "memorials", id: :string, force: :cascade do |t|
    t.string "source", null: false
    t.integer "needStar"
    t.integer "shareCoin"
    t.integer "needPlayDay"
    t.string "needCustomerId"
    t.string "needCustomerCnt"
    t.boolean "isSecretStore"
    t.string "assetKeyId"
    t.float "version"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["assetKeyId"], name: "index_memorials_on_assetKeyId"
    t.index ["id"], name: "index_memorials_on_id", unique: true
    t.index ["isSecretStore"], name: "index_memorials_on_isSecretStore"
    t.index ["needCustomerCnt"], name: "index_memorials_on_needCustomerCnt"
    t.index ["needCustomerId"], name: "index_memorials_on_needCustomerId"
    t.index ["needPlayDay"], name: "index_memorials_on_needPlayDay"
    t.index ["needStar"], name: "index_memorials_on_needStar"
    t.index ["shareCoin"], name: "index_memorials_on_shareCoin"
    t.index ["source"], name: "index_memorials_on_source"
    t.index ["version"], name: "index_memorials_on_version"
  end

  create_table "users", force: :cascade do |t|
    t.string "provider"
    t.string "uid"
    t.string "username"
    t.string "image"
    t.string "email"
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "areas_employees", "areas"
end
