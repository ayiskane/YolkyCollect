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

ActiveRecord::Schema[7.2].define(version: 2024_09_20_215823) do
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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_id"], name: "index_staffs_on_area_id"
    t.index ["name_cn"], name: "index_staffs_on_name_cn"
    t.index ["name_cn2"], name: "index_staffs_on_name_cn2"
    t.index ["name_en"], name: "index_staffs_on_name_en"
    t.index ["name_jp"], name: "index_staffs_on_name_jp"
    t.index ["name_kr"], name: "index_staffs_on_name_kr"
  end

  add_foreign_key "staffs", "areas"
end
