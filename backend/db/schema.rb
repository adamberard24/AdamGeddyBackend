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

ActiveRecord::Schema.define(version: 2021_05_10_213404) do

  create_table "artists", force: :cascade do |t|
    t.string "name"
    t.string "songs"
    t.integer "followers"
  end

  create_table "attending_concerts", force: :cascade do |t|
    t.integer "fan_id"
    t.integer "concert_id"
  end

  create_table "concerts", force: :cascade do |t|
    t.time "time"
    t.date "date"
    t.string "venue"
    t.integer "cost"
    t.integer "artist_id"
  end

  create_table "fans", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.integer "age"
  end

  create_table "followers", force: :cascade do |t|
    t.integer "fan_id"
    t.integer "artist_id"
  end

end
