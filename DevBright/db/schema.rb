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

ActiveRecord::Schema.define(version: 20160627023026) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bidders", force: :cascade do |t|
    t.integer  "lead_id"
    t.integer  "home_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "homes", force: :cascade do |t|
    t.string   "title"
    t.integer  "sale_price"
    t.integer  "zip"
    t.integer  "bedrooms"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leads", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email_address"
    t.string   "home_title"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end