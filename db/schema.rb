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

ActiveRecord::Schema.define(version: 20130727232255) do

  create_table "user_attributes", force: true do |t|
    t.integer  "user_id"
    t.string   "attribute_type"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_attributes", ["attribute_type"], name: "index_user_attributes_on_attribute_type"
  add_index "user_attributes", ["user_id", "attribute_type"], name: "index_user_attributes_on_user_id_and_attribute_type"
  add_index "user_attributes", ["user_id"], name: "index_user_attributes_on_user_id"

  create_table "user_stats", force: true do |t|
    t.integer  "user_id"
    t.string   "stat_type"
    t.integer  "level"
    t.binary   "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "level"
    t.string   "login"
    t.string   "password"
    t.string   "user_type"
    t.boolean  "is_active",  default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
