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

ActiveRecord::Schema.define(version: 20150510022531) do

  create_table "actors", force: :cascade do |t|
    t.string   "name",        limit: 100
    t.text     "bio"
    t.date     "birth_date"
    t.string   "birth_place", limit: 100
    t.string   "image_url"
    t.boolean  "alive"
    t.date     "death_date"
    t.string   "death_place", limit: 100
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

end
