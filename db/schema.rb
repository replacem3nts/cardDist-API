# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_07_13_213717) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cbos", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "hcs", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "prescribers", force: :cascade do |t|
    t.bigint "cbo_id", null: false
    t.string "firstname"
    t.string "lastname"
    t.string "tel"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cbo_id"], name: "index_prescribers_on_cbo_id"
  end

  create_table "rxes", force: :cascade do |t|
    t.bigint "cbo_id", null: false
    t.bigint "hc_id", null: false
    t.string "clienttel"
    t.integer "amount"
    t.string "language"
    t.string "prescribername"
    t.string "prescriberphone"
    t.datetime "appt"
    t.string "cardserial"
    t.boolean "pickedup"
    t.boolean "loaded"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cbo_id"], name: "index_rxes_on_cbo_id"
    t.index ["hc_id"], name: "index_rxes_on_hc_id"
  end

  add_foreign_key "prescribers", "cbos"
  add_foreign_key "rxes", "cbos"
  add_foreign_key "rxes", "hcs"
end
