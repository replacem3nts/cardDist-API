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

ActiveRecord::Schema.define(version: 2020_08_02_224150) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cbos", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "covidimpacts", force: :cascade do |t|
    t.string "kind"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "doctorvisits", force: :cascade do |t|
    t.string "kind"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "documents", force: :cascade do |t|
    t.integer "report_id", null: false
    t.string "name"
    t.string "filetype"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["report_id"], name: "index_documents_on_report_id"
  end

  create_table "funduses", force: :cascade do |t|
    t.string "kind"
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

  create_table "hhmembers", force: :cascade do |t|
    t.integer "age"
    t.string "gender"
    t.bigint "survey_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["survey_id"], name: "index_hhmembers_on_survey_id"
  end

  create_table "pages", force: :cascade do |t|
    t.integer "document_id", null: false
    t.text "body"
    t.text "footnote"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["document_id"], name: "index_pages_on_document_id"
  end

  create_table "prescribers", force: :cascade do |t|
    t.bigint "cbo_id", null: false
    t.string "firstname"
    t.string "lastname"
    t.string "tel"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email"
    t.index ["cbo_id"], name: "index_prescribers_on_cbo_id"
  end

  create_table "reports", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rxes", force: :cascade do |t|
    t.bigint "cbo_id", null: false
    t.bigint "hc_id", default: 1, null: false
    t.string "clienttel"
    t.integer "amount", default: 300
    t.string "language"
    t.string "prescribername"
    t.string "prescriberphone"
    t.datetime "appt"
    t.string "cardserial"
    t.boolean "pickedup", default: false
    t.boolean "loaded", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "prescriberemail"
    t.text "notes"
    t.string "rxcode"
    t.index ["cbo_id"], name: "index_rxes_on_cbo_id"
    t.index ["hc_id"], name: "index_rxes_on_hc_id"
  end

  create_table "scs", force: :cascade do |t|
    t.bigint "survey_id", null: false
    t.bigint "covidimpact_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["covidimpact_id"], name: "index_scs_on_covidimpact_id"
    t.index ["survey_id"], name: "index_scs_on_survey_id"
  end

  create_table "sds", force: :cascade do |t|
    t.bigint "doctorvisit_id", null: false
    t.bigint "survey_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["doctorvisit_id"], name: "index_sds_on_doctorvisit_id"
    t.index ["survey_id"], name: "index_sds_on_survey_id"
  end

  create_table "sfs", force: :cascade do |t|
    t.bigint "funduse_id", null: false
    t.bigint "survey_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["funduse_id"], name: "index_sfs_on_funduse_id"
    t.index ["survey_id"], name: "index_sfs_on_survey_id"
  end

  create_table "surveys", force: :cascade do |t|
    t.bigint "rx_id", null: false
    t.integer "age"
    t.string "gender"
    t.integer "hhsize"
    t.integer "hhfamilies"
    t.string "zipcode"
    t.string "mixedstatus"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["rx_id"], name: "index_surveys_on_rx_id"
  end

  add_foreign_key "documents", "reports"
  add_foreign_key "hhmembers", "surveys"
  add_foreign_key "pages", "documents"
  add_foreign_key "prescribers", "cbos"
  add_foreign_key "rxes", "cbos"
  add_foreign_key "rxes", "hcs"
  add_foreign_key "scs", "covidimpacts"
  add_foreign_key "scs", "surveys"
  add_foreign_key "sds", "doctorvisits"
  add_foreign_key "sds", "surveys"
  add_foreign_key "sfs", "funduses"
  add_foreign_key "sfs", "surveys"
  add_foreign_key "surveys", "rxes"
end
