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

ActiveRecord::Schema.define(version: 2019_01_11_023711) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "contractuals", force: :cascade do |t|
    t.string "player_type"
    t.string "agent"
    t.string "nui"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_contractuals_on_user_id"
  end

  create_table "information_personals", force: :cascade do |t|
    t.string "name"
    t.text "birth_place"
    t.date "born_date"
    t.integer "weight"
    t.integer "height"
    t.string "gender"
    t.string "club"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_information_personals_on_user_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.string "principal_position"
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_teams_on_user_id"
  end

  create_table "techniques", force: :cascade do |t|
    t.string "principal_position"
    t.string "secondary_position"
    t.string "strong_foot"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_techniques_on_user_id"
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

  create_table "users_visoria", id: false, force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "visorium_id", null: false
    t.index ["user_id", "visorium_id"], name: "index_users_visoria_on_user_id_and_visorium_id"
    t.index ["visorium_id", "user_id"], name: "index_users_visoria_on_visorium_id_and_user_id"
  end

  create_table "viewers", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.date "birth"
    t.integer "telephone"
    t.string "club"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_viewers_on_user_id"
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
    t.bigint "user_id"
    t.index ["user_id"], name: "index_visoria_on_user_id"
  end

  add_foreign_key "contractuals", "users"
  add_foreign_key "information_personals", "users"
  add_foreign_key "teams", "users"
  add_foreign_key "techniques", "users"
  add_foreign_key "viewers", "users"
  add_foreign_key "visoria", "users"
end
