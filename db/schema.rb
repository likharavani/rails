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

ActiveRecord::Schema[7.0].define(version: 2023_10_03_132607) do
  create_table "adhars", force: :cascade do |t|
    t.integer "users_id", null: false
    t.string "adhar_no"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["users_id"], name: "index_adhars_on_users_id"
  end

  create_table "article_comments", id: false, force: :cascade do |t|
    t.integer "article_id", null: false
    t.integer "comment_id", null: false
    t.string "name"
    t.integer "age"
    t.string "contact"
    t.string "add"
    t.string "color"
  end

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string "commenter"
    t.text "body"
    t.integer "article_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id"], name: "index_comments_on_article_id"
  end

  create_table "departments", force: :cascade do |t|
    t.string "d_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.integer "department_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["department_id"], name: "index_employees_on_department_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.integer "age"
    t.string "address"
    t.string "email_confirmation"
    t.integer "marks"
    t.integer "student_id"
  end

  create_table "table_students", force: :cascade do |t|
    t.string "name"
    t.integer "standard"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "age"
    t.string "contact"
  end

  create_table "users", force: :cascade do |t|
    t.string "u_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "adhars", "users", column: "users_id"
  add_foreign_key "comments", "articles"
  add_foreign_key "employees", "departments"
end
