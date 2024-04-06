# frozen_string_literal: true

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

ActiveRecord::Schema[7.1].define(version: 20_240_325_093_030) do # rubocop:todo Metrics/BlockLength
  create_table 'doctors', force: :cascade do |t|
    t.integer 'dock_id'
    t.string 'dname'
    t.string 'spec'
    t.string 'dphone'
    t.integer 'hos_id'
    t.integer 'user_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'hospitals', force: :cascade do |t|
    t.integer 'rank'
    t.string 'name'
    t.string 'url'
    t.string 'country'
    t.string 'city'
  end

  create_table 'medical_cards', force: :cascade do |t|
    t.integer 'medical_card_id'
    t.integer 'patient_id'
    # t.integer "doctor_id"
    t.integer 'hospital_id'
    # t.string "diagnosis"
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.datetime 'appointment_date'
    t.boolean 'attended', default: false
    t.string 'appointment_type'
    t.index ['doctor_id'], name: 'index_medical_cards_on_doctor_id'
    t.index ['hospital_id'], name: 'index_medical_cards_on_hospital_id'
    t.index ['patient_id'], name: 'index_medical_cards_on_patient_id'
  end

  create_table 'medical_records', force: :cascade do |t|
    t.integer 'mrec_id'
    t.datetime 'date'
    t.string 'problem'
    t.integer 'pat_id'
    t.integer 'doc_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer 'medical_card_id'
    t.index ['medical_card_id'], name: 'index_medical_records_on_medical_card_id'
  end

  create_table 'patients', force: :cascade do |t|
    t.integer 'pat_id'
    t.string 'pname'
    t.string 'padress'
    t.string 'pphone'
    t.integer 'age'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer 'user_id'
    t.index ['user_id'], name: 'index_patients_on_user_id'
  end

  create_table 'records', force: :cascade do |t|
    t.string 'record_id'
    t.string 'conclusion'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer 'dock_id'
    t.integer 'pat_id'
    t.index ['dock_id'], name: 'index_records_on_dock_id'
    t.index ['pat_id'], name: 'index_records_on_pat_id'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer 'role'
    t.index ['email'], name: 'index_users_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true
  end

  add_foreign_key 'doctors', 'users'
  add_foreign_key 'medical_cards', 'doctors'
  add_foreign_key 'medical_cards', 'hospitals'
  add_foreign_key 'medical_cards', 'patients'
  add_foreign_key 'medical_records', 'medical_cards'
  add_foreign_key 'patients', 'users'
end
