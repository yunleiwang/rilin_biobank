# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150916035515) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "boxer_storages", force: :cascade do |t|
    t.integer  "position_index"
    t.integer  "boxer_id"
    t.integer  "frame_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "boxers", force: :cascade do |t|
    t.string   "box_name"
    t.string   "box_seq"
    t.integer  "box_row"
    t.integer  "box_column"
    t.text     "remark"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "container_types", force: :cascade do |t|
    t.string   "container_catalog"
    t.string   "container_icon"
    t.string   "alia_name"
    t.string   "add_link_url"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "containers", force: :cascade do |t|
    t.string   "container_name"
    t.string   "container_type_id"
    t.integer  "code_style"
    t.integer  "frame_num"
    t.integer  "container_rows"
    t.integer  "container_columns"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "frame_storages", force: :cascade do |t|
    t.integer  "position_index"
    t.integer  "frame_id"
    t.integer  "container_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "frames", force: :cascade do |t|
    t.string   "frame_seq"
    t.string   "frame_name"
    t.string   "frame_type"
    t.integer  "code_order"
    t.integer  "horizontal_direction"
    t.integer  "vertiacal_direction"
    t.integer  "frame_rows"
    t.integer  "frame_columns"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "hospitals", force: :cascade do |t|
    t.string   "name"
    t.integer  "province_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "menu_libs", force: :cascade do |t|
    t.string   "name_zh"
    t.integer  "menu_lib_id"
    t.string   "link"
    t.integer  "seq"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "icon_class"
  end

  create_table "patient_cases", force: :cascade do |t|
    t.string   "case_number"
    t.string   "patient_info_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "patient_infos", force: :cascade do |t|
    t.string   "patient_id"
    t.string   "patient_name"
    t.string   "gender"
    t.date     "birthday"
    t.string   "cell_phone"
    t.string   "home_phone"
    t.string   "other_phone"
    t.string   "zip_code"
    t.string   "address"
    t.string   "company_name"
    t.string   "company_phone"
    t.string   "company_zip"
    t.string   "company_address"
    t.string   "relationship_first"
    t.string   "relative_name_first"
    t.string   "relative_phone1_first"
    t.string   "relative_phone2_first"
    t.string   "relationship_second"
    t.string   "relative_name_second"
    t.string   "relative_phone1_second"
    t.string   "relative_phone2_second"
    t.string   "relationship_third"
    t.string   "relative_name_third"
    t.string   "relative_phone1_third"
    t.string   "relative_phone2_third"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "sample_storage_logs", force: :cascade do |t|
    t.integer  "sample_id"
    t.string   "user_name"
    t.integer  "out_percent"
    t.integer  "left_volume"
    t.text     "out_use_for"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "sample_storages", force: :cascade do |t|
    t.integer  "position_index"
    t.integer  "boxer_id"
    t.integer  "sample_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "samples", force: :cascade do |t|
    t.string   "sample_no"
    t.string   "sample_seq"
    t.integer  "user_id"
    t.string   "storage_status"
    t.integer  "freezing_thawing_times"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "sample_storage_id"
    t.float    "initial_sample_volume"
    t.float    "current_sample_volume"
    t.integer  "patient_case_id"
  end

  create_table "sys_roles", force: :cascade do |t|
    t.string   "name"
    t.text     "remark"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sys_users", force: :cascade do |t|
    t.string   "username"
    t.string   "password"
    t.string   "gender"
    t.date     "birthday"
    t.integer  "department_id"
    t.integer  "role_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
