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

ActiveRecord::Schema.define(version: 20190304003338) do

  create_table "account_roles", force: :cascade do |t|
    t.integer "account_id"
    t.integer "role_id"
    t.index ["account_id"], name: "index_account_roles_on_account_id"
    t.index ["role_id"], name: "index_account_roles_on_role_id"
  end

  create_table "accounts", force: :cascade do |t|
    t.string "email", null: false
    t.string "crypted_password"
    t.string "salt"
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.integer "broker_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["broker_id"], name: "index_accounts_on_broker_id"
  end

  create_table "direct_trades", force: :cascade do |t|
    t.decimal "price_per_share"
    t.integer "number_of_shares"
    t.string "status"
    t.integer "issuer_id"
    t.integer "seller_id"
    t.integer "buyer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["buyer_id"], name: "index_direct_trades_on_buyer_id"
    t.index ["issuer_id"], name: "index_direct_trades_on_issuer_id"
    t.index ["seller_id"], name: "index_direct_trades_on_seller_id"
  end

  create_table "issuers", force: :cascade do |t|
    t.string "slug"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "name", null: false
    t.string "key", null: false
  end

end
