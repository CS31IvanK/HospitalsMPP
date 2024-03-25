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

ActiveRecord::Schema[7.1].define(version: 2024_03_25_003954) do
  create_table "doctors", force: :cascade do |t|
    t.integer "dock_id"
    t.string "dname"
    t.string "spec"
    t.string "dphone"
    t.integer "hos_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

# Could not dump table "doctors" because of following StandardError
#   Unknown type 'stringк' for column 'phone'

  create_table "hospitals", force: :cascade do |t|
    t.integer "rank"
    t.string "name"
    t.string "url"
    t.string "country"
    t.string "city"
  end

  create_table "medical_records", force: :cascade do |t|
    t.integer "mrec_id"
    t.datetime "date"
    t.string "problem"
    t.integer "pat_id"
    t.integer "doc_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patients", force: :cascade do |t|
    t.integer "pat_id"
    t.string "pname"
    t.string "padress"
    t.string "pphone"
    t.integer "age"
    t.integer "doc_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "records", force: :cascade do |t|
    t.string "record_id"
    t.string "conclusion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
