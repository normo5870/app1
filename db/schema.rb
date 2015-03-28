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

ActiveRecord::Schema.define(version: 20150307232057) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "Brand", primary_key: "BrandKey", force: :cascade do |t|
    t.string "BrandName", limit: 255
  end

  create_table "Category", primary_key: "CategoryKey", force: :cascade do |t|
    t.string "CategoryName", limit: 255
  end

  create_table "Products", primary_key: "ProductKey", force: :cascade do |t|
    t.string  "ProductName",           array: true
    t.money   "Price",       scale: 2
    t.integer "Quantity"
    t.integer "CategoryKey"
    t.integer "BrandKey"
    t.integer "VendorKey"
  end

  create_table "PurchaseHistory", primary_key: "PurchaseKey", force: :cascade do |t|
    t.date    "Date"
    t.integer "UserKey"
    t.integer "ProductKey"
  end

  create_table "Role", primary_key: "RoleKey", force: :cascade do |t|
    t.string "RoleName", limit: 255
  end

  create_table "User", primary_key: "UserKey", force: :cascade do |t|
    t.string  "UserName",         limit: 255
    t.string  "Password",         limit: 255
    t.string  "FirstName",        limit: 255
    t.string  "LastName",         limit: 255
    t.integer "CreditCardNumber"
    t.date    "ExpirationDate"
    t.string  "SecurityCode",     limit: 3
    t.integer "RoleKey"
    t.integer "VendorKey"
  end

  create_table "Vendor", primary_key: "VendorKey", force: :cascade do |t|
    t.string "VendorName", limit: 255
    t.string "Country",    limit: 1
  end

  add_foreign_key "Products", "\"Brand\"", column: "BrandKey", primary_key: "BrandKey", name: "BrandKey"
  add_foreign_key "Products", "\"Category\"", column: "CategoryKey", primary_key: "CategoryKey", name: "CategoryKey"
  add_foreign_key "Products", "\"Vendor\"", column: "VendorKey", primary_key: "VendorKey", name: "VendorKey"
  add_foreign_key "PurchaseHistory", "\"Products\"", column: "ProductKey", primary_key: "ProductKey", name: "ProductKey"
  add_foreign_key "PurchaseHistory", "\"User\"", column: "UserKey", primary_key: "UserKey", name: "UserKey"
  add_foreign_key "User", "\"Role\"", column: "RoleKey", primary_key: "RoleKey", name: "RoleKey"
  add_foreign_key "User", "\"Vendor\"", column: "VendorKey", primary_key: "VendorKey", name: "VendorKey"
end
