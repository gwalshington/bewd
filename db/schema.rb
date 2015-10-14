# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20151014225311) do

  create_table "departments", force: :cascade do |t|
    t.string   "department"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "forms", force: :cascade do |t|
    t.string   "form_name"
    t.string   "form_link"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "municipality_id"
    t.integer  "department_id"
    t.boolean  "has_payment"
    t.boolean  "is_state"
    t.boolean  "is_federal"
  end

  add_index "forms", ["department_id"], name: "index_forms_on_department_id"
  add_index "forms", ["municipality_id"], name: "index_forms_on_municipality_id"

  create_table "municipalities", force: :cascade do |t|
    t.string   "name"
    t.integer  "form_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "population"
    t.integer  "state_id"
    t.string   "municipality_type"
    t.string   "forms_page"
    t.string   "city_county"
    t.string   "referral"
    t.string   "referral_url"
    t.string   "payment_provider"
    t.string   "website_provider"
  end

  add_index "municipalities", ["state_id"], name: "index_municipalities_on_state_id"

  create_table "resources", force: :cascade do |t|
    t.string   "resource"
    t.string   "url"
    t.integer  "state_id"
    t.integer  "municipality_id"
    t.integer  "department_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "genre"
  end

  add_index "resources", ["department_id"], name: "index_resources_on_department_id"
  add_index "resources", ["municipality_id"], name: "index_resources_on_municipality_id"
  add_index "resources", ["state_id"], name: "index_resources_on_state_id"

  create_table "states", force: :cascade do |t|
    t.string   "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "votes", force: :cascade do |t|
    t.integer  "votable_id"
    t.string   "votable_type"
    t.integer  "voter_id"
    t.string   "voter_type"
    t.boolean  "vote_flag"
    t.string   "vote_scope"
    t.integer  "vote_weight"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "votes", ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope"
  add_index "votes", ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope"

end
