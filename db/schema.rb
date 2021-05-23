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

ActiveRecord::Schema.define(version: 2021_05_23_131453) do

  create_table "comentarios", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.text "cuerpo"
    t.bigint "usuario_id", null: false
    t.bigint "coveet_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["coveet_id"], name: "index_comentarios_on_coveet_id"
    t.index ["usuario_id"], name: "index_comentarios_on_usuario_id"
  end

  create_table "coveets", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.text "cuerpo"
    t.integer "likes"
    t.bigint "usuario_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["usuario_id"], name: "index_coveets_on_usuario_id"
  end

  create_table "developers", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.bigint "project_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["project_id"], name: "index_developers_on_project_id"
    t.index ["surname"], name: "index_developers_on_surname"
  end

  create_table "likes", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "usuario_id", null: false
    t.bigint "coveet_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["coveet_id"], name: "index_likes_on_coveet_id"
    t.index ["usuario_id"], name: "index_likes_on_usuario_id"
  end

  create_table "projects", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.integer "team"
    t.text "info"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["team"], name: "index_projects_on_team", unique: true
  end

  create_table "tests", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "usuarios", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "username"
    t.text "pass"
    t.boolean "isAdmin"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["username"], name: "index_usuarios_on_username", unique: true
  end

  add_foreign_key "comentarios", "coveets"
  add_foreign_key "comentarios", "usuarios"
  add_foreign_key "coveets", "usuarios"
  add_foreign_key "developers", "projects"
  add_foreign_key "likes", "coveets"
  add_foreign_key "likes", "usuarios"
end
