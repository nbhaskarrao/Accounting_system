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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20170625113732) do
=======
ActiveRecord::Schema.define(version: 20170624055347) do
>>>>>>> 3817c6139f353c79337e72f482304d30e6969c11

  create_table "account_details", force: :cascade do |t|
    t.string   "account_name"
    t.integer  "amount"
    t.boolean  "credit"
    t.boolean  "debit"
    t.text     "description"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
<<<<<<< HEAD
    t.integer  "total"
=======
>>>>>>> 3817c6139f353c79337e72f482304d30e6969c11
  end

  create_table "partner_details", force: :cascade do |t|
    t.string   "partner_name"
    t.integer  "amount"
    t.boolean  "credit"
    t.boolean  "debit"
<<<<<<< HEAD
    t.text     "description"https://github.com/nbhaskarrao/Accounting_system.git
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "total"
=======
    t.text     "description"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
>>>>>>> 3817c6139f353c79337e72f482304d30e6969c11
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
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
