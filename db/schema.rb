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

ActiveRecord::Schema.define(:version => 20140508000854) do

  create_table "ipblocks", :force => true do |t|
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "start"
    t.integer  "end"
    t.integer  "location_id"
  end

  add_index "ipblocks", ["end"], :name => "index_ipblocks_on_end"
  add_index "ipblocks", ["location_id"], :name => "index_ipblocks_on_location_id"
  add_index "ipblocks", ["start"], :name => "index_ipblocks_on_start"

  create_table "locations", :force => true do |t|
    t.string  "country"
    t.string  "region"
    t.string  "city"
    t.integer "zipcode"
    t.integer "latitude"
    t.integer "longitude"
    t.integer "metro_code"
    t.integer "area_code"
  end

end
