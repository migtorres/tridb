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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130614190708) do

  create_table "athletes", :force => true do |t|
    t.integer  "ftp_license"
    t.string   "name"
    t.string   "full_name"
    t.date     "birth_date"
    t.integer  "team_id"
    t.string   "country_iso"
    t.integer  "place_id"
    t.string   "email"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "url"
    t.integer  "ftp_number"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "courses", :force => true do |t|
    t.string   "the_geom"
    t.integer  "sport_id"
    t.integer  "order"
    t.integer  "race_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "locations", :force => true do |t|
    t.float    "lat"
    t.float    "lon"
    t.string   "parish"
    t.string   "municipality"
    t.string   "region1"
    t.string   "region2"
    t.string   "country"
    t.string   "continent"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "spatial_ref_sys", :id => false, :force => true do |t|
    t.integer "srid",                      :null => false
    t.string  "auth_name", :limit => 256
    t.integer "auth_srid"
    t.string  "srtext",    :limit => 2048
    t.string  "proj4text", :limit => 2048
  end

  create_table "teams", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.integer  "city_id"
    t.string   "country_iso"
    t.string   "site"
    t.string   "facebook"
    t.integer  "location_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "tipo_provas", :force => true do |t|
    t.string   "tipo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "triathlon_races", :force => true do |t|
    t.date     "date"
    t.time     "hour"
    t.string   "type"
    t.float    "swimming_distance"
    t.float    "cycling_distance"
    t.float    "running_distance"
    t.integer  "location_id"
    t.integer  "competition_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "triathlon_results", :force => true do |t|
    t.integer  "place"
    t.integer  "ftp_number"
    t.integer  "ftp_license"
    t.integer  "swimming_place"
    t.time     "swimming_time"
    t.integer  "transition_one_place"
    t.time     "transition_first_time"
    t.integer  "cycling_place"
    t.time     "cycling_time"
    t.integer  "transition_two_place"
    t.time     "transition_two_time"
    t.integer  "running_place"
    t.time     "running_time"
    t.time     "total_time"
    t.time     "difference"
    t.integer  "triathlon_race_id"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

end
