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

ActiveRecord::Schema.define(version: 20151008142827) do

  create_table "admins", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "annual_incomes", force: true do |t|
    t.integer  "annual_income"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "interests", force: true do |t|
    t.string   "title"
    t.string   "detail"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lady_doctor_blocks", force: true do |t|
    t.integer  "male_id"
    t.integer  "lady_doctor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lady_doctor_comments", force: true do |t|
    t.integer  "lady_doctor_post_id"
    t.integer  "lady_doctor_id"
    t.string   "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lady_doctor_interests", force: true do |t|
    t.integer  "lady_doctor_id"
    t.integer  "interest_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lady_doctor_post_comments", force: true do |t|
    t.integer  "lady_doctor_post_id"
    t.integer  "lady_doctor_id"
    t.string   "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lady_doctor_posts", force: true do |t|
    t.integer  "lady_doctor_id", null: false
    t.string   "content",        null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
  end

  create_table "lady_doctors", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "sex"
    t.string   "name",                                   null: false
    t.integer  "age"
    t.string   "birthplace"
    t.string   "school"
    t.string   "work"
    t.integer  "annual_income"
    t.integer  "secret_state"
    t.integer  "profile_image_id"
    t.integer  "doctor_number",                          null: false
    t.string   "remember_token"
    t.boolean  "confirm_state",          default: false, null: false
  end

  add_index "lady_doctors", ["email"], name: "index_lady_doctors_on_email", unique: true, using: :btree
  add_index "lady_doctors", ["reset_password_token"], name: "index_lady_doctors_on_reset_password_token", unique: true, using: :btree

  create_table "likes", force: true do |t|
    t.integer  "male_id"
    t.integer  "lady_doctor_id"
    t.string   "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "male_blocks", force: true do |t|
    t.integer  "male_id"
    t.integer  "lady_doctor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "male_comments", force: true do |t|
    t.integer  "lady_doctor_post_id"
    t.integer  "male_id"
    t.string   "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "male_interests", force: true do |t|
    t.integer  "male_id"
    t.integer  "interest_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "male_post_comments", force: true do |t|
    t.integer  "lady_doctor_post_id"
    t.integer  "male_id"
    t.string   "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "male_posts", force: true do |t|
    t.integer  "male_id",    null: false
    t.string   "content",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
  end

  create_table "males", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "sex"
    t.string   "name",                   default: "", null: false
    t.integer  "age"
    t.string   "birthplace"
    t.string   "school"
    t.string   "work"
    t.integer  "annual_income"
    t.integer  "secret_state"
    t.integer  "profile_image_id"
    t.string   "remember_token"
  end

  add_index "males", ["email"], name: "index_males_on_email", unique: true, using: :btree
  add_index "males", ["reset_password_token"], name: "index_males_on_reset_password_token", unique: true, using: :btree

  create_table "relationships", force: true do |t|
    t.integer  "male_id"
    t.integer  "lady_doctor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
