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

ActiveRecord::Schema.define(version: 20180912085331) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "favorites", force: :cascade do |t|
    t.integer "user_id"
    t.integer "slogan_id"
    t.string "opinion"
  end

  create_table "sentence1s", force: :cascade do |t|
    t.string "sentence_top"
  end

  create_table "sentence2s", force: :cascade do |t|
    t.string "sentence_center"
  end

  create_table "sentence3s", force: :cascade do |t|
    t.string "sentence_last"
  end

  create_table "slogans", force: :cascade do |t|
    t.integer "user_id"
    t.string "slogan_text"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "image"
    t.string "password_digest"
    t.string "trophy"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
