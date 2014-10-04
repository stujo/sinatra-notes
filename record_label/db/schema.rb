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

ActiveRecord::Schema.define(version: 20141044234826) do

  create_table "agents", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "albums", force: true do |t|
    t.string   "title"
    t.date     "released_on"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "albums_tracks", id: false, force: true do |t|
    t.integer "album_id"
    t.integer "track_id"
  end

  add_index "albums_tracks", ["album_id", "track_id"], name: "index_albums_tracks_on_album_id_and_track_id"
  add_index "albums_tracks", ["album_id"], name: "index_albums_tracks_on_album_id"

  create_table "artists", force: true do |t|
    t.string   "name"
    t.date     "date_of_birth"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bands", force: true do |t|
    t.string   "name"
    t.date     "signed_on"
    t.integer  "agent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "bands", ["agent_id"], name: "index_bands_on_agent_id"

  create_table "stints", force: true do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "band_id"
    t.integer  "artist_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "stints", ["artist_id"], name: "index_stints_on_artist_id"
  add_index "stints", ["band_id"], name: "index_stints_on_band_id"

  create_table "super_fans", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "artist_id"
    t.string   "parole_officer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "super_fans", ["artist_id"], name: "index_super_fans_on_artist_id"

  create_table "tracks", force: true do |t|
    t.string   "title"
    t.integer  "seconds"
    t.date     "released_on"
    t.integer  "band_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tracks", ["band_id"], name: "index_tracks_on_band_id"

end
