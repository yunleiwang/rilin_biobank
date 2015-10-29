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

ActiveRecord::Schema.define(version: 20151029085254) do

  create_table "boxer_storages", force: :cascade do |t|
    t.integer  "position_index"
    t.integer  "boxer_id"
    t.integer  "frame_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "boxers", force: :cascade do |t|
    t.string   "box_name",   limit: 255
    t.string   "box_seq",    limit: 255
    t.integer  "box_row"
    t.integer  "box_column"
    t.text     "remark"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "container_types", force: :cascade do |t|
    t.string   "container_catalog", limit: 255
    t.string   "container_icon",    limit: 255
    t.string   "alia_name",         limit: 255
    t.string   "add_link_url",      limit: 255
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "containers", force: :cascade do |t|
    t.string   "container_name",    limit: 255
    t.string   "container_type_id", limit: 255
    t.integer  "code_style"
    t.integer  "frame_num"
    t.integer  "container_rows"
    t.integer  "container_columns"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "container_seq",     limit: 255
  end

  create_table "frame_storages", force: :cascade do |t|
    t.integer  "position_index"
    t.integer  "frame_id"
    t.integer  "container_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "frames", force: :cascade do |t|
    t.string   "frame_seq",            limit: 255
    t.string   "frame_name",           limit: 255
    t.string   "frame_type",           limit: 255
    t.integer  "code_order"
    t.integer  "horizontal_direction"
    t.integer  "vertiacal_direction"
    t.integer  "frame_rows"
    t.integer  "frame_columns"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "hospitals", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.integer  "province_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "menu_libs", force: :cascade do |t|
    t.string   "name_zh",     limit: 255
    t.integer  "menu_lib_id"
    t.string   "link",        limit: 255
    t.integer  "seq"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "icon_class",  limit: 255
  end

  create_table "patient_cases", force: :cascade do |t|
    t.string   "case_number",     limit: 255
    t.string   "patient_info_id", limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "patient_infos", force: :cascade do |t|
    t.string   "patient_id",             limit: 255
    t.string   "patient_name",           limit: 255
    t.string   "gender",                 limit: 255
    t.date     "birthday"
    t.string   "cell_phone",             limit: 255
    t.string   "home_phone",             limit: 255
    t.string   "other_phone",            limit: 255
    t.string   "zip_code",               limit: 255
    t.string   "address",                limit: 255
    t.string   "company_name",           limit: 255
    t.string   "company_phone",          limit: 255
    t.string   "company_zip",            limit: 255
    t.string   "company_address",        limit: 255
    t.string   "relationship_first",     limit: 255
    t.string   "relative_name_first",    limit: 255
    t.string   "relative_phone1_first",  limit: 255
    t.string   "relative_phone2_first",  limit: 255
    t.string   "relationship_second",    limit: 255
    t.string   "relative_name_second",   limit: 255
    t.string   "relative_phone1_second", limit: 255
    t.string   "relative_phone2_second", limit: 255
    t.string   "relationship_third",     limit: 255
    t.string   "relative_name_third",    limit: 255
    t.string   "relative_phone1_third",  limit: 255
    t.string   "relative_phone2_third",  limit: 255
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "sample_preout_logs", force: :cascade do |t|
    t.string   "operator_name", limit: 255
    t.string   "user_name",     limit: 255
    t.string   "status",        limit: 255
    t.string   "sample_ids",    limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "num"
    t.integer  "proportpion"
    t.integer  "sys_user_id"
    t.text     "use_for"
  end

  create_table "sample_storage_logs", force: :cascade do |t|
    t.integer  "sample_id"
    t.string   "user_name",   limit: 255
    t.integer  "out_percent"
    t.integer  "left_volume"
    t.text     "out_use_for"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "sample_storages", force: :cascade do |t|
    t.integer  "position_index"
    t.integer  "boxer_id"
    t.integer  "sample_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "samples", force: :cascade do |t|
    t.string   "sample_no",              limit: 255
    t.string   "sample_seq",             limit: 255
    t.integer  "user_id"
    t.string   "storage_status",         limit: 255
    t.integer  "freezing_thawing_times"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.integer  "sample_storage_id"
    t.float    "initial_sample_volume"
    t.float    "current_sample_volume"
    t.integer  "patient_case_id"
  end

  create_table "sys_roles", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.text     "remark"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "sys_table_columns", force: :cascade do |t|
    t.string   "tname_zn",   limit: 255
    t.string   "tname_en",   limit: 255
    t.string   "cname_zn",   limit: 255
    t.string   "cname_en",   limit: 255
    t.integer  "order_no"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "sys_users", force: :cascade do |t|
    t.string   "username",      limit: 255
    t.string   "password",      limit: 255
    t.string   "gender",        limit: 255
    t.date     "birthday"
    t.integer  "department_id"
    t.integer  "role_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

end
