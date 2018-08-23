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

ActiveRecord::Schema.define(version: 2018_08_22_155142) do

  create_table "buildings", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "code", null: false
    t.string "registration_num", limit: 50
    t.string "name", limit: 50, null: false
    t.string "street", limit: 50, null: false
    t.string "city", limit: 50, null: false
    t.string "state", limit: 50, null: false
    t.string "postal_code", limit: 50, null: false
    t.integer "parking_spots", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "country", limit: 50
    t.index ["code"], name: "index_buildings_on_code", unique: true
  end

  create_table "visitors", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "apt_num", limit: 11
    t.string "phone", limit: 20
    t.string "license_plate", limit: 20
    t.bigint "building_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["building_id"], name: "index_visitors_on_building_id"
  end

  add_foreign_key "visitors", "buildings"
end
