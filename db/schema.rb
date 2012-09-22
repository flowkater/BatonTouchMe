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

ActiveRecord::Schema.define(:version => 20120922110409) do

  create_table "authkeys", :force => true do |t|
    t.string   "authkey"
    t.string   "genkeys"
    t.string   "remember_token"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "authkeys", ["authkey"], :name => "index_authkeys_on_authkey", :unique => true
  add_index "authkeys", ["remember_token"], :name => "index_authkeys_on_remember_token"

  create_table "batons", :force => true do |t|
    t.string   "taskname"
    t.string   "phone"
    t.text     "detail"
    t.string   "address"
    t.date     "date"
    t.string   "time"
    t.integer  "status_id",  :default => 0
    t.string   "wish"
    t.integer  "runner_id",  :default => 0
    t.integer  "anywork"
    t.integer  "authkey_id"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "batons", ["authkey_id"], :name => "index_batons_on_authkey_id"

  create_table "reviews", :force => true do |t|
    t.integer  "baton_id"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "reviews", ["baton_id"], :name => "index_reviews_on_baton_id"

end
