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

ActiveRecord::Schema.define(version: 20161211144259) do

  create_table "customers", force: :cascade do |t|
    t.string   "name"
    t.string   "phone_number"
    t.text     "address"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "customer_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "address"
    t.string   "customer_name"
    t.string   "customer_number"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "order_size"
    t.integer  "vehicles_id"
  end

  create_table "product_and_customers", force: :cascade do |t|
    t.integer  "customer_id"
    t.integer  "product_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "product_in_orders", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "product_name"
    t.integer  "product_price"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
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
    t.string   "name"
    t.integer  "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vehicles", force: :cascade do |t|
    t.string   "distance"
    t.string   "driverName"
    t.string   "plateNumber"
    t.string   "carType"
    t.string   "modelMake"
    t.integer  "queue"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
