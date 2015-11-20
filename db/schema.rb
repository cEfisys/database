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

ActiveRecord::Schema.define(version: 20151119234840) do

  create_table "actuator_types", force: :cascade do |t|
    t.string   "name",           limit: 255
    t.string   "caracteristics", limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "actuators", force: :cascade do |t|
    t.string   "ref",              limit: 255
    t.boolean  "state"
    t.integer  "actuator_type_id", limit: 4,   null: false
    t.integer  "green_kub_box_id", limit: 4,   null: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "actuators", ["actuator_type_id"], name: "index_actuators_on_actuator_type_id", using: :btree
  add_index "actuators", ["green_kub_box_id"], name: "index_actuators_on_green_kub_box_id", using: :btree

  create_table "green_kub_boxes", force: :cascade do |t|
    t.string   "Serial_Number", limit: 255
    t.integer  "model_id",      limit: 4,   null: false
    t.integer  "user_id",       limit: 4,   null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "green_kub_boxes", ["model_id"], name: "index_green_kub_boxes_on_model_id", using: :btree
  add_index "green_kub_boxes", ["user_id"], name: "index_green_kub_boxes_on_user_id", using: :btree

  create_table "models", force: :cascade do |t|
    t.string   "name",           limit: 255
    t.string   "caracteristics", limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "sensor_actuator_infos", force: :cascade do |t|
    t.integer  "value",      limit: 4
    t.date     "date"
    t.integer  "sensor_id",  limit: 4, null: false
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "sensor_actuator_infos", ["sensor_id"], name: "index_sensor_actuator_infos_on_sensor_id", using: :btree

  create_table "sensor_types", force: :cascade do |t|
    t.string   "name",           limit: 255
    t.string   "caracteristics", limit: 255
    t.string   "unit",           limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "sensors", force: :cascade do |t|
    t.string   "ref",              limit: 255
    t.boolean  "state"
    t.integer  "sensor_type_id",   limit: 4,   null: false
    t.integer  "green_kub_box_id", limit: 4,   null: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "sensors", ["green_kub_box_id"], name: "index_sensors_on_green_kub_box_id", using: :btree
  add_index "sensors", ["sensor_type_id"], name: "index_sensors_on_sensor_type_id", using: :btree

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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "actuators", "actuator_types"
  add_foreign_key "actuators", "green_kub_boxes"
  add_foreign_key "green_kub_boxes", "models"
  add_foreign_key "green_kub_boxes", "users"
  add_foreign_key "sensor_actuator_infos", "sensors"
  add_foreign_key "sensors", "green_kub_boxes"
  add_foreign_key "sensors", "sensor_types"
end
