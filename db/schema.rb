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

ActiveRecord::Schema[7.0].define(version: 2022_03_24_161147) do
  create_table "clients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rentals", force: :cascade do |t|
    t.integer "client_id", null: false
    t.integer "VHS_Tape_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["VHS_Tape_id"], name: "index_rentals_on_VHS_Tape_id"
    t.index ["client_id"], name: "index_rentals_on_client_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "vhs_tapes_id", null: false
    t.string "review"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["vhs_tapes_id"], name: "index_reviews_on_vhs_tapes_id"
  end

  create_table "vhs_tapes", force: :cascade do |t|
    t.string "Title"
    t.string "description"
    t.string "Rating"
    t.float "Price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "rentals", "VHS_Tapes"
  add_foreign_key "rentals", "clients"
  add_foreign_key "reviews", "vhs_tapes", column: "vhs_tapes_id"
end