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

ActiveRecord::Schema.define(version: 20161204020510) do

  create_table "colonies", force: :cascade do |t|
    t.integer  "polling_station_id"
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["polling_station_id"], name: "index_colonies_on_polling_station_id"
  end

  create_table "departments", force: :cascade do |t|
    t.string   "num_depto"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mers", force: :cascade do |t|
    t.integer  "polling_station_id"
    t.string   "num_mer"
    t.string   "name"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["polling_station_id"], name: "index_mers_on_polling_station_id"
  end

  create_table "municipalities", force: :cascade do |t|
    t.integer  "department_id"
    t.string   "num_minicip"
    t.string   "name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["department_id"], name: "index_municipalities_on_department_id"
  end

  create_table "polling_stations", force: :cascade do |t|
    t.integer  "sub_sector_id"
    t.string   "num_pollstat"
    t.string   "name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["sub_sector_id"], name: "index_polling_stations_on_sub_sector_id"
  end

  create_table "sectors", force: :cascade do |t|
    t.integer  "municipality_id"
    t.string   "num_sector"
    t.string   "name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["municipality_id"], name: "index_sectors_on_municipality_id"
  end

  create_table "sub_sectors", force: :cascade do |t|
    t.integer  "sector_id"
    t.string   "num_sub_sector"
    t.string   "name"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["sector_id"], name: "index_sub_sectors_on_sector_id"
  end

end
