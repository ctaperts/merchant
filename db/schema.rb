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

ActiveRecord::Schema.define(version: 20160909032720) do

  create_table "brands", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_brands_on_name", unique: true
  end

  create_table "carts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_categories_on_name", unique: true
  end

  create_table "line_items", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "cart_id"
    t.integer  "quantity",         default: 1
    t.decimal  "price"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.integer  "order_id"
    t.decimal  "case"
    t.decimal  "price_per_case"
    t.decimal  "pounds"
    t.decimal  "price_per_pound"
    t.boolean  "check",            default: false
    t.datetime "check_on"
    t.string   "check_by"
    t.boolean  "quality_check",    default: false
    t.datetime "quality_check_on"
    t.string   "quality_check_by"
    t.index ["cart_id"], name: "index_line_items_on_cart_id"
    t.index ["order_id"], name: "index_line_items_on_order_id"
    t.index ["product_id"], name: "index_line_items_on_product_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_locations_on_product_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string   "name"
    t.text     "address"
    t.string   "pay_type"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.decimal  "price"
    t.integer  "quantity"
    t.text     "description"
    t.integer  "category_id"
    t.integer  "brand_id"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.decimal  "pounds"
    t.decimal  "price_per_pound"
    t.decimal  "case"
    t.decimal  "price_per_case"
    t.integer  "item_amount_type",    default: 0
    t.integer  "location_id"
    t.index ["brand_id"], name: "index_products_on_brand_id"
    t.index ["category_id"], name: "index_products_on_category_id"
    t.index ["location_id"], name: "index_products_on_location_id"
  end

  create_table "routes", force: :cascade do |t|
    t.integer  "order_id"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.boolean  "delivered",       default: false
    t.datetime "delivered_on"
    t.integer  "truck_id"
    t.boolean  "truck_loaded",    default: false
    t.datetime "truck_loaded_on"
    t.index ["order_id"], name: "index_routes_on_order_id"
    t.index ["truck_id"], name: "index_routes_on_truck_id"
  end

  create_table "truck_histories", force: :cascade do |t|
    t.datetime "maintenance_date"
    t.string   "maintenance_info"
    t.boolean  "maintenance_passing"
    t.integer  "truck_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "document_file_name"
    t.string   "document_content_type"
    t.integer  "document_file_size"
    t.datetime "document_updated_at"
    t.index ["truck_id"], name: "index_truck_histories_on_truck_id"
  end

  create_table "trucks", force: :cascade do |t|
    t.integer  "number"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "admin",                  default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
