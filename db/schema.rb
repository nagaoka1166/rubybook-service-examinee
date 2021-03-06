# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_11_29_081905) do

  create_table "entries", charset: "utf8mb4", force: :cascade do |t|
    t.string "phone", limit: 255, null: false
    t.integer "age", default: 0, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.bigint "post_id"
    t.index ["post_id"], name: "index_entries_on_post_id"
    t.index ["user_id"], name: "index_entries_on_user_id"
  end

  create_table "likes", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "post_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["post_id"], name: "index_likes_on_post_id"
    t.index ["user_id", "post_id"], name: "index_likes_on_user_id_and_post_id", unique: true
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "posts", charset: "utf8mb4", force: :cascade do |t|
    t.string "title", limit: 255
    t.text "description"
    t.string "caution", limit: 255
    t.string "restriction", limit: 255
    t.integer "project"
    t.string "rabo", limit: 255
    t.string "testing_field", limit: 255
    t.string "experment_period", limit: 255, null: false
    t.string "meet_time", limit: 255
    t.string "reward", limit: 255
    t.string "item", limit: 255
    t.integer "count"
    t.boolean "is_active", default: true, null: false
    t.date "recruitment_period", default: "2021-11-13"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
  end

  create_table "researchers", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_researchers_on_user_id"
  end

  create_table "students", charset: "utf8mb4", force: :cascade do |t|
    t.integer "age"
    t.integer "sex"
    t.integer "grade"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "birthday", default: "2000-01-01", null: false
    t.index ["user_id"], name: "index_students_on_user_id"
  end

  create_table "users", charset: "utf8mb4", force: :cascade do |t|
    t.string "email", limit: 255, default: "", null: false
    t.string "encrypted_password", limit: 255, default: "", null: false
    t.string "reset_password_token", limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name", limit: 255, default: "", null: false
    t.integer "faculty"
    t.integer "content_type", default: 0, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "entries", "posts"
  add_foreign_key "entries", "users"
end
