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

ActiveRecord::Schema.define(version: 2019_06_06_104636) do

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "location"
  end

  create_table "manufacturers", force: :cascade do |t|
    t.string "name"
    t.string "website"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "prducts_id"
    t.index ["prducts_id"], name: "index_manufacturers_on_prducts_id"
  end

  create_table "prducts", force: :cascade do |t|
    t.string "name"
    t.string "product_type"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "manufacturer_id"
    t.boolean "has_mib"
    t.boolean "has_access"
    t.integer "versions_id"
    t.index ["manufacturer_id"], name: "index_prducts_on_manufacturer_id"
    t.index ["versions_id"], name: "index_prducts_on_versions_id"
  end

  create_table "prducts_projects", force: :cascade do |t|
    t.integer "project_id"
    t.integer "prduct_id"
    t.index ["prduct_id"], name: "index_prducts_projects_on_prduct_id"
    t.index ["project_id"], name: "index_prducts_projects_on_project_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.integer "siteNumber"
    t.integer "unitNumber"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
    t.integer "client_id"
    t.integer "priority", default: 0
    t.boolean "is_archive", default: false
    t.integer "project_type", default: 0
    t.boolean "installed"
    t.integer "licence_type", default: 0
    t.date "licence_date_start"
    t.date "licence_date_end"
    t.boolean "has_teamviewer"
    t.string "teamviewer_pass"
    t.string "teamviewer_login"
    t.date "installation_date"
    t.index ["client_id"], name: "index_projects_on_client_id"
  end

  create_table "projects_users", id: false, force: :cascade do |t|
    t.integer "project_id"
    t.integer "user_id"
    t.index ["project_id"], name: "index_projects_users_on_project_id"
    t.index ["user_id"], name: "index_projects_users_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.boolean "business", default: false
    t.boolean "support", default: false
    t.boolean "developper", default: false
    t.string "firstname"
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "versions", force: :cascade do |t|
    t.integer "wcm"
    t.string "configfile"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "prduct_id"
    t.integer "status", default: 0
    t.integer "format", default: 0
    t.index ["prduct_id"], name: "index_versions_on_prduct_id"
  end

end
