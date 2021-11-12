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

ActiveRecord::Schema.define(version: 2021_11_11_081350) do

  create_table "entries", charset: "utf8mb4", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "mail_adress", default: "", null: false
    t.string "phone", null: false
    t.integer "age", default: 0, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.bigint "post_id"
    t.index ["post_id"], name: "index_entries_on_post_id"
    t.index ["user_id"], name: "index_entries_on_user_id"
  end

  create_table "posts", charset: "utf8mb4", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "caution"
    t.string "restriction"
    t.integer "project"
    t.string "rabo"
    t.string "testing_field"
    t.datetime "experment_period"
    t.string "meet_time"
    t.string "reward"
    t.string "item"
    t.integer "count"
    t.integer "is_active"
    t.datetime "recruitment_period"
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
    t.integer "grade", default: 0, null: false
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "birthday", default: "2000-01-01", null: false
    t.index ["user_id"], name: "index_students_on_user_id"
  end

  create_table "users", charset: "utf8mb4", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name", default: "", null: false
    t.integer "faculty", default: 0, null: false
    t.integer "content_type", default: 0, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "entries", "posts"
  add_foreign_key "entries", "users"
end
