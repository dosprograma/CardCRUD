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

ActiveRecord::Schema.define(version: 2021_01_07_152822) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cards", force: :cascade do |t|
    t.string "Stripe"
    t.integer "Number"
    t.string "Type_card"
    t.integer "CSV"
    t.bigint "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_cards_on_client_id"
  end

  create_table "clients", force: :cascade do |t|
    t.integer "CPF"
    t.string "Adress"
    t.string "RG"
    t.integer "Phone"
    t.bigint "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_clients_on_company_id"
  end

  create_table "companies", force: :cascade do |t|
    t.integer "idCompany"
    t.string "Name"
    t.string "Adress"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "cards", "clients"
  add_foreign_key "clients", "companies"
end
