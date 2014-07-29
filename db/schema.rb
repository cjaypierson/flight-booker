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

ActiveRecord::Schema.define(version: 20140729023755) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "airports", force: true do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bookings", force: true do |t|
    t.integer  "flight_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "flights", force: true do |t|
    t.integer  "departure_id"
    t.integer  "arrival_id"
    t.time     "departure_time"
    t.datetime "arrival_time"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "date"
  end

  add_index "flights", ["arrival_id"], name: "index_flights_on_arrival_id", using: :btree
  add_index "flights", ["departure_id"], name: "index_flights_on_departure_id", using: :btree

  create_table "groups", force: true do |t|
    t.integer  "booking_id"
    t.integer  "passenger_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "passengers", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end