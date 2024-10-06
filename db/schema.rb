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

ActiveRecord::Schema[7.2].define(version: 2024_10_06_230559) do
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

  create_table "buildings", id: false, force: :cascade do |t|
    t.string "building_id"
    t.string "building_group_id", null: false
    t.integer "index"
    t.string "building_style_id", null: false
    t.integer "cost"
    t.string "cost_type"
    t.integer "star"
    t.integer "income"
    t.integer "tip"
    t.integer "tip_cap"
    t.integer "gen_coin"
    t.integer "gen_plate"
    t.decimal "cook_time_factor", precision: 10, scale: 2
    t.string "need_customer"
    t.string "need_food"
    t.string "need_mail"
    t.string "need_egg"
    t.integer "need_egg_affection_lv"
    t.integer "need_star"
    t.integer "need_mewchelin_lv"
    t.string "battle_order"
    t.integer "capsule_lv"
    t.integer "capsule_daily_count"
    t.integer "flower_lv"
    t.integer "flower_view_count"
    t.integer "wish_level"
    t.boolean "wish_one_touch"
    t.integer "wish_award_count"
    t.integer "wish_free_times"
    t.integer "wish_extra_reward"
    t.integer "takeout_order_limit"
    t.integer "takeout_container_type"
    t.integer "takeout_container_capacity"
    t.string "limit_buy_activity"
    t.string "limit_activity"
    t.string "limit_building_type"
    t.string "activity"
    t.decimal "version", precision: 10, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity"], name: "index_buildings_on_activity"
    t.index ["battle_order"], name: "index_buildings_on_battle_order"
    t.index ["building_group_id"], name: "index_buildings_on_building_group_id"
    t.index ["building_id"], name: "index_buildings_on_building_id"
    t.index ["building_style_id"], name: "index_buildings_on_building_style_id"
    t.index ["capsule_daily_count"], name: "index_buildings_on_capsule_daily_count"
    t.index ["capsule_lv"], name: "index_buildings_on_capsule_lv"
    t.index ["cook_time_factor"], name: "index_buildings_on_cook_time_factor"
    t.index ["cost"], name: "index_buildings_on_cost"
    t.index ["cost_type"], name: "index_buildings_on_cost_type"
    t.index ["flower_lv"], name: "index_buildings_on_flower_lv"
    t.index ["flower_view_count"], name: "index_buildings_on_flower_view_count"
    t.index ["gen_coin"], name: "index_buildings_on_gen_coin"
    t.index ["gen_plate"], name: "index_buildings_on_gen_plate"
    t.index ["income"], name: "index_buildings_on_income"
    t.index ["index"], name: "index_buildings_on_index"
    t.index ["limit_activity"], name: "index_buildings_on_limit_activity"
    t.index ["limit_building_type"], name: "index_buildings_on_limit_building_type"
    t.index ["limit_buy_activity"], name: "index_buildings_on_limit_buy_activity"
    t.index ["need_customer"], name: "index_buildings_on_need_customer"
    t.index ["need_egg"], name: "index_buildings_on_need_egg"
    t.index ["need_egg_affection_lv"], name: "index_buildings_on_need_egg_affection_lv"
    t.index ["need_food"], name: "index_buildings_on_need_food"
    t.index ["need_mail"], name: "index_buildings_on_need_mail"
    t.index ["need_mewchelin_lv"], name: "index_buildings_on_need_mewchelin_lv"
    t.index ["need_star"], name: "index_buildings_on_need_star"
    t.index ["star"], name: "index_buildings_on_star"
    t.index ["takeout_container_capacity"], name: "index_buildings_on_takeout_container_capacity"
    t.index ["takeout_container_type"], name: "index_buildings_on_takeout_container_type"
    t.index ["takeout_order_limit"], name: "index_buildings_on_takeout_order_limit"
    t.index ["tip"], name: "index_buildings_on_tip"
    t.index ["tip_cap"], name: "index_buildings_on_tip_cap"
    t.index ["version"], name: "index_buildings_on_version"
    t.index ["wish_award_count"], name: "index_buildings_on_wish_award_count"
    t.index ["wish_extra_reward"], name: "index_buildings_on_wish_extra_reward"
    t.index ["wish_free_times"], name: "index_buildings_on_wish_free_times"
    t.index ["wish_level"], name: "index_buildings_on_wish_level"
    t.index ["wish_one_touch"], name: "index_buildings_on_wish_one_touch"
  end

  create_table "customer_groups", force: :cascade do |t|
    t.string "localize_id", null: false
    t.index ["localize_id"], name: "index_customer_groups_on_localize_id"
  end

  create_table "customers", id: :string, force: :cascade do |t|
    t.string "food_order"
    t.integer "need_star"
    t.integer "need_ad_lv"
    t.string "need_memorial"
    t.string "need_customer"
    t.string "carry_order"
    t.integer "share_coin"
    t.decimal "star_prob", precision: 10, scale: 2
    t.integer "star_value"
    t.integer "weight"
    t.boolean "is_terrace"
    t.integer "terrace_need_ad_lv"
    t.integer "terrace_times"
    t.boolean "is_doll"
    t.boolean "is_community"
    t.boolean "is_halloween"
    t.string "battle_order"
    t.string "limit_season"
    t.string "limit_activity"
    t.string "weight_activity"
    t.integer "weight_activity_weight"
    t.integer "ability_food_order_times"
    t.decimal "ability_cook_time_factor", precision: 10, scale: 2
    t.decimal "ability_coin_crit_prob", precision: 10, scale: 2
    t.integer "ability_coin_crit_factor"
    t.string "asset"
    t.decimal "version", precision: 10, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ability_coin_crit_factor"], name: "index_customers_on_ability_coin_crit_factor"
    t.index ["ability_coin_crit_prob"], name: "index_customers_on_ability_coin_crit_prob"
    t.index ["ability_cook_time_factor"], name: "index_customers_on_ability_cook_time_factor"
    t.index ["ability_food_order_times"], name: "index_customers_on_ability_food_order_times"
    t.index ["asset"], name: "index_customers_on_asset"
    t.index ["battle_order"], name: "index_customers_on_battle_order"
    t.index ["carry_order"], name: "index_customers_on_carry_order"
    t.index ["food_order"], name: "index_customers_on_food_order"
    t.index ["is_community"], name: "index_customers_on_is_community"
    t.index ["is_doll"], name: "index_customers_on_is_doll"
    t.index ["is_halloween"], name: "index_customers_on_is_halloween"
    t.index ["is_terrace"], name: "index_customers_on_is_terrace"
    t.index ["limit_activity"], name: "index_customers_on_limit_activity"
    t.index ["limit_season"], name: "index_customers_on_limit_season"
    t.index ["need_ad_lv"], name: "index_customers_on_need_ad_lv"
    t.index ["need_customer"], name: "index_customers_on_need_customer"
    t.index ["need_memorial"], name: "index_customers_on_need_memorial"
    t.index ["need_star"], name: "index_customers_on_need_star"
    t.index ["share_coin"], name: "index_customers_on_share_coin"
    t.index ["star_prob"], name: "index_customers_on_star_prob"
    t.index ["star_value"], name: "index_customers_on_star_value"
    t.index ["terrace_need_ad_lv"], name: "index_customers_on_terrace_need_ad_lv"
    t.index ["terrace_times"], name: "index_customers_on_terrace_times"
    t.index ["version"], name: "index_customers_on_version"
    t.index ["weight"], name: "index_customers_on_weight"
    t.index ["weight_activity"], name: "index_customers_on_weight_activity"
    t.index ["weight_activity_weight"], name: "index_customers_on_weight_activity_weight"
  end

  create_table "foods", id: :string, force: :cascade do |t|
    t.integer "cost"
    t.integer "cook_time"
    t.integer "food_order_group"
    t.decimal "food_order_factor"
    t.string "need_customer"
    t.string "need_mail"
    t.string "need_memorial"
    t.string "need_order"
    t.string "need_booth"
    t.integer "need_star"
    t.integer "lv_1_income"
    t.integer "lv_1_need_ad_lv"
    t.string "lv_1_need_building"
    t.string "lv_1_need_mail"
    t.integer "lv_1_need_star"
    t.integer "lv_2_income"
    t.string "lv_2_need_building"
    t.string "lv_2_need_mail"
    t.integer "lv_2_need_star"
    t.integer "lv_3_income"
    t.string "lv_3_need_building"
    t.string "lv_3_need_mail"
    t.integer "lv_3_need_star"
    t.string "asset"
    t.decimal "version", precision: 10, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["asset"], name: "index_foods_on_asset"
    t.index ["cook_time"], name: "index_foods_on_cook_time"
    t.index ["cost"], name: "index_foods_on_cost"
    t.index ["food_order_factor"], name: "index_foods_on_food_order_factor"
    t.index ["food_order_group"], name: "index_foods_on_food_order_group"
    t.index ["lv_1_income"], name: "index_foods_on_lv_1_income"
    t.index ["lv_1_need_ad_lv"], name: "index_foods_on_lv_1_need_ad_lv"
    t.index ["lv_1_need_building"], name: "index_foods_on_lv_1_need_building"
    t.index ["lv_1_need_mail"], name: "index_foods_on_lv_1_need_mail"
    t.index ["lv_1_need_star"], name: "index_foods_on_lv_1_need_star"
    t.index ["lv_2_income"], name: "index_foods_on_lv_2_income"
    t.index ["lv_2_need_building"], name: "index_foods_on_lv_2_need_building"
    t.index ["lv_2_need_mail"], name: "index_foods_on_lv_2_need_mail"
    t.index ["lv_2_need_star"], name: "index_foods_on_lv_2_need_star"
    t.index ["lv_3_income"], name: "index_foods_on_lv_3_income"
    t.index ["lv_3_need_building"], name: "index_foods_on_lv_3_need_building"
    t.index ["lv_3_need_mail"], name: "index_foods_on_lv_3_need_mail"
    t.index ["lv_3_need_star"], name: "index_foods_on_lv_3_need_star"
    t.index ["need_booth"], name: "index_foods_on_need_booth"
    t.index ["need_customer"], name: "index_foods_on_need_customer"
    t.index ["need_mail"], name: "index_foods_on_need_mail"
    t.index ["need_memorial"], name: "index_foods_on_need_memorial"
    t.index ["need_order"], name: "index_foods_on_need_order"
    t.index ["need_star"], name: "index_foods_on_need_star"
    t.index ["version"], name: "index_foods_on_version"
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

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.string "tags"
    t.boolean "show", default: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "takeout_container_types", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
  add_foreign_key "building_groups", "localize_data", column: "localize_id"
  add_foreign_key "building_styles", "localize_data", column: "localize_id"
  add_foreign_key "buildings", "building_groups"
  add_foreign_key "buildings", "building_styles"
  add_foreign_key "customer_groups", "localize_data", column: "localize_id"
  add_foreign_key "posts", "users"
end
