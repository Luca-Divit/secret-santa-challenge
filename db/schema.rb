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

ActiveRecord::Schema[7.0].define(version: 2022_12_16_114521) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "draws", force: :cascade do |t|
    t.string "title"
    t.integer "budget"
    t.date "date"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_draws_on_user_id"
  end

  create_table "partecipants", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "draw_id", null: false
    t.index ["draw_id"], name: "index_partecipants_on_draw_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "wishlists", force: :cascade do |t|
    t.bigint "draw_id", null: false
    t.bigint "partecipant_id", null: false
    t.bigint "product_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["draw_id"], name: "index_wishlists_on_draw_id"
    t.index ["partecipant_id"], name: "index_wishlists_on_partecipant_id"
    t.index ["product_id"], name: "index_wishlists_on_product_id"
  end

  add_foreign_key "draws", "users"
  add_foreign_key "partecipants", "draws"
  add_foreign_key "wishlists", "draws"
  add_foreign_key "wishlists", "partecipants"
  add_foreign_key "wishlists", "products"
end
