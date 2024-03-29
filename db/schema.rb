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

ActiveRecord::Schema.define(version: 20160221155859) do

  create_table "bones_segments", force: :cascade do |t|
    t.text     "name",        limit: 65535
    t.integer  "company_id",  limit: 4
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "companies", force: :cascade do |t|
    t.text     "name",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "diagnoses_tests", id: false, force: :cascade do |t|
    t.integer "diagnosis_id", limit: 4, null: false
    t.integer "test_id",      limit: 4, null: false
  end

  add_index "diagnoses_tests", ["diagnosis_id"], name: "index_diagnoses_tests_on_diagnosis_id", using: :btree

  create_table "medicine_categroys", force: :cascade do |t|
    t.text     "name",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "medicines", force: :cascade do |t|
    t.text     "name",                 limit: 65535
    t.text     "material",             limit: 65535
    t.integer  "concentration",        limit: 4
    t.integer  "medicine_category_id", limit: 4
    t.integer  "company_id",           limit: 4
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "medicines_records", force: :cascade do |t|
    t.integer "medicine_id", limit: 4, null: false
    t.integer "record_id",   limit: 4, null: false
  end

  add_index "medicines_records", ["medicine_id"], name: "index_medicines_records_on_medicine_id", using: :btree
  add_index "medicines_records", ["record_id"], name: "index_medicines_records_on_record_id", using: :btree

  create_table "medicines_reports", force: :cascade do |t|
    t.integer "medicine_id", limit: 4, null: false
    t.integer "report_id",   limit: 4, null: false
  end

  add_index "medicines_reports", ["medicine_id"], name: "index_medicines_reports_on_medicine_id", using: :btree
  add_index "medicines_reports", ["report_id"], name: "index_medicines_reports_on_report_id", using: :btree

  create_table "medicines_surgeries", force: :cascade do |t|
    t.integer "medicine_id", limit: 4, null: false
    t.integer "surgery_id",  limit: 4, null: false
  end

  add_index "medicines_surgeries", ["medicine_id"], name: "index_medicines_surgeries_on_medicine_id", using: :btree
  add_index "medicines_surgeries", ["surgery_id"], name: "index_medicines_surgeries_on_surgery_id", using: :btree

  create_table "patients", force: :cascade do |t|
    t.string   "name",        limit: 255,                         null: false
    t.decimal  "height",                  precision: 8, scale: 2, null: false
    t.decimal  "weight",                  precision: 8, scale: 2, null: false
    t.string   "address",     limit: 255
    t.string   "national_id", limit: 255,                         null: false
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  create_table "patients_users", force: :cascade do |t|
    t.integer "user_id",    limit: 4, null: false
    t.integer "patient_id", limit: 4, null: false
  end

  add_index "patients_users", ["patient_id"], name: "index_patients_users_on_patient_id", using: :btree
  add_index "patients_users", ["user_id"], name: "index_patients_users_on_user_id", using: :btree

  create_table "phones", force: :cascade do |t|
    t.text     "phone_number",        limit: 65535
    t.integer  "treatment_center_id", limit: 4
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "records", force: :cascade do |t|
    t.integer  "patient_id",          limit: 4
    t.integer  "user_id",             limit: 4
    t.integer  "treatment_center_id", limit: 4
    t.date     "Rdate"
    t.text     "diagnoses",           limit: 65535
    t.integer  "diagnoses_type",      limit: 4
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "segments_surgeries", force: :cascade do |t|
    t.integer "segment_id", limit: 4, null: false
    t.integer "surgery_id", limit: 4, null: false
  end

  add_index "segments_surgeries", ["segment_id"], name: "index_segments_surgeries_on_segment_id", using: :btree
  add_index "segments_surgeries", ["surgery_id"], name: "index_segments_surgeries_on_surgery_id", using: :btree

  create_table "specializations", force: :cascade do |t|
    t.text     "name",       limit: 65535, null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "surgeries", force: :cascade do |t|
    t.text     "description", limit: 65535
    t.integer  "user_id",     limit: 4
    t.integer  "patient_id",  limit: 4
    t.date     "S_date"
    t.text     "place",       limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "syndicates", force: :cascade do |t|
    t.text     "name",       limit: 65535, null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "tests", force: :cascade do |t|
    t.string   "test_name",  limit: 255,   null: false
    t.integer  "record_id",  limit: 4,     null: false
    t.text     "results",    limit: 65535, null: false
    t.text     "comments",   limit: 65535, null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "treatment_centers", force: :cascade do |t|
    t.text     "name",              limit: 65535, null: false
    t.integer  "syndicate_id",      limit: 4,     null: false
    t.text     "address",           limit: 65535, null: false
    t.integer  "specialization_id", limit: 4,     null: false
    t.integer  "likes",             limit: 4
    t.integer  "dislikes",          limit: 4
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "username",               limit: 255
    t.integer  "treatment_center_id",    limit: 4
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "x_rays", force: :cascade do |t|
    t.text     "rays_name",  limit: 65535, null: false
    t.text     "results",    limit: 65535, null: false
    t.text     "comments",   limit: 65535, null: false
    t.integer  "record_id",  limit: 4,     null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

end
