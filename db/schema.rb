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

ActiveRecord::Schema.define(version: 20140815031805) do

  create_table "events", force: true do |t|
    t.string   "name"
    t.string   "location"
    t.datetime "when"
    t.text     "description"
    t.string   "image"
    t.string   "contact_phone"
    t.string   "contact_email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "signups", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "event_id"
  end

  add_index "signups", ["event_id"], name: "index_signups_on_event_id"
  add_index "signups", ["user_id"], name: "index_signups_on_user_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "zip_code"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "password_digest"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
