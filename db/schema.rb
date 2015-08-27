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

ActiveRecord::Schema.define(version: 20150827025934) do

  create_table "boxer_storages", force: :cascade do |t|
    t.integer  "position_index", limit: 4
    t.integer  "boxer_id",       limit: 4
    t.integer  "frame_id",       limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "boxers", force: :cascade do |t|
    t.string   "box_name",   limit: 255
    t.string   "box_seq",    limit: 255
    t.integer  "box_row",    limit: 4
    t.integer  "box_column", limit: 4
    t.text     "remark",     limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
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
    t.integer  "code_style",        limit: 4
    t.integer  "frame_num",         limit: 4
    t.integer  "container_rows",    limit: 4
    t.integer  "container_columns", limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "frame_storages", force: :cascade do |t|
    t.integer  "position_index", limit: 4
    t.integer  "frame_id",       limit: 4
    t.integer  "container_id",   limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "frames", force: :cascade do |t|
    t.string   "frame_seq",            limit: 255
    t.string   "frame_name",           limit: 255
    t.string   "frame_type",           limit: 255
    t.integer  "code_order",           limit: 4
    t.integer  "horizontal_direction", limit: 4
    t.integer  "vertiacal_direction",  limit: 4
    t.integer  "frame_rows",           limit: 4
    t.integer  "frame_columns",        limit: 4
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
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

  create_table "sample_storage_logs", force: :cascade do |t|
    t.integer  "sample_id",   limit: 4
    t.string   "user_name",   limit: 255
    t.integer  "out_percent", limit: 4
    t.integer  "left_volume", limit: 4
    t.text     "out_use_for", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "sample_storages", force: :cascade do |t|
    t.integer  "position_index", limit: 4
    t.integer  "boxer_id",       limit: 4
    t.integer  "sample_id",      limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "samples", force: :cascade do |t|
    t.string   "sample_no",              limit: 255
    t.string   "sample_seq",             limit: 255
    t.integer  "user_id",                limit: 4
    t.string   "storage_status",         limit: 255
    t.integer  "freezing_thawing_times", limit: 4
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.integer  "sample_storage_id",      limit: 4
    t.float    "initial_sample_volume",  limit: 24
    t.float    "current_sample_volume",  limit: 24
    t.integer  "patient_case_id",        limit: 4
  end

end
