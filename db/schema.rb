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

ActiveRecord::Schema.define(version: 20130716231214) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "age_categories", force: true do |t|
    t.integer  "minimum_age"
    t.integer  "maximum_age"
    t.integer  "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "age_groups", force: true do |t|
    t.integer  "minimum_age"
    t.integer  "maximum_age"
    t.integer  "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "athletes", force: true do |t|
    t.integer  "ftp_number"
    t.integer  "ftp_license"
    t.string   "name"
    t.string   "full_name"
    t.date     "birth_date"
    t.integer  "team_id"
    t.integer  "location_id"
    t.string   "email"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "url"
    t.string   "gender"
    t.string   "nationality"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "classifications", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "competitions", force: true do |t|
    t.integer  "sport_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "global_races", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "import_results_from_urls", force: true do |t|
    t.text     "url"
    t.text     "type"
    t.string   "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "import_short_ftp_triathlons", force: true do |t|
    t.integer  "place"
    t.integer  "ftp_number"
    t.integer  "ftp_license"
    t.text     "athlete_name"
    t.text     "pen"
    t.text     "age_group_name"
    t.string   "team"
    t.integer  "swimming_position"
    t.time     "swimming_time"
    t.integer  "cycling_position"
    t.time     "cycling_time"
    t.integer  "running_position"
    t.time     "running_time"
    t.time     "race_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: true do |t|
    t.float    "lat"
    t.float    "lon"
    t.string   "parish"
    t.string   "municipality"
    t.string   "region1"
    t.string   "region2"
    t.string   "country"
    t.string   "continent"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "race_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "races", force: true do |t|
    t.integer  "location_id"
    t.integer  "type_id"
    t.string   "name"
    t.date     "date"
    t.integer  "competition_id"
    t.integer  "sport_id"
    t.integer  "global_race_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "results", force: true do |t|
    t.integer  "race_id"
    t.integer  "athlete_id"
    t.integer  "classification_id"
    t.integer  "place"
    t.time     "time"
    t.integer  "age_group_id"
    t.integer  "class_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "segment_results", force: true do |t|
    t.integer  "athlete_id"
    t.integer  "segment_id"
    t.integer  "place"
    t.time     "time"
    t.integer  "age_group_id"
    t.integer  "class_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "segments", force: true do |t|
    t.integer  "race_id"
    t.integer  "sport_id"
    t.integer  "order"
    t.text     "the_geom"
    t.float    "distance"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sports", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "team_years", force: true do |t|
    t.integer  "athlete_id"
    t.integer  "team_id"
    t.integer  "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "name"
    t.integer  "location_id"
    t.string   "site"
    t.string   "facebook"
    t.string   "twitter"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
