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

ActiveRecord::Schema.define(version: 2019_01_05_163759) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contractuals", force: :cascade do |t|
    t.string "player_type"
    t.string "agent"
    t.string "nui"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.string "principal_position"
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "techniques", force: :cascade do |t|
    t.string "principal_position"
    t.string "secondary_position"
    t.string "strong_foot"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "provider"
    t.string "uid"
    t.string "image"
    t.string "name"
    t.string "role", default: "player"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "viewers", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.date "birth"
    t.integer "telephone"
    t.string "club"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "visoria", force: :cascade do |t|
    t.date "date"
    t.text "place"
    t.string "schedule"
    t.text "club"
    t.text "description"
    t.text "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
