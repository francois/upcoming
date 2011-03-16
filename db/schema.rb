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

ActiveRecord::Schema.define(:version => 20110316125258) do

  create_table "attendees", :force => true do |t|
    t.string   "name",         :null => false
    t.string   "email",        :null => false
    t.datetime "last_seen_at", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", :force => true do |t|
    t.string   "name"
    t.string   "url"
    t.datetime "start_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "registrations", :force => true do |t|
    t.integer  "event_id",    :null => false
    t.integer  "attendee_id", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "registrations", ["event_id", "attendee_id"], :name => "index_registrations_on_event_id_and_attendee_id", :unique => true

end
