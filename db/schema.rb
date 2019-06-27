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

ActiveRecord::Schema.define(version: 2019_06_27_155429) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.text "bio"
    t.string "quirk"
    t.string "mood"
    t.bigint "prompt_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["prompt_id"], name: "index_characters_on_prompt_id"
  end

  create_table "comments", force: :cascade do |t|
    t.text "body"
    t.boolean "liked"
    t.bigint "user_id"
    t.bigint "piece_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["piece_id"], name: "index_comments_on_piece_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.string "photo"
    t.string "extra"
    t.integer "digit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pieces", force: :cascade do |t|
    t.text "body"
    t.text "note"
    t.integer "likes"
    t.boolean "bookmarked"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_pieces_on_user_id"
  end

  create_table "prompts", force: :cascade do |t|
    t.string "emotion"
    t.string "setting"
    t.string "event"
    t.string "genre"
    t.integer "timed"
    t.integer "word_count"
    t.bigint "piece_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["piece_id"], name: "index_prompts_on_piece_id"
  end

  create_table "user_groups", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_user_groups_on_group_id"
    t.index ["user_id"], name: "index_user_groups_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "user_name"
    t.string "password"
    t.string "avatar"
    t.text "bio"
    t.text "thoughts"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "characters", "prompts"
  add_foreign_key "comments", "pieces"
  add_foreign_key "comments", "users"
  add_foreign_key "pieces", "users"
  add_foreign_key "prompts", "pieces"
  add_foreign_key "user_groups", "groups"
  add_foreign_key "user_groups", "users"
end
