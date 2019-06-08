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

ActiveRecord::Schema.define(version: 2019_06_08_014017) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "title"
    t.text "about"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "ref"
  end

  create_table "communities", force: :cascade do |t|
    t.string "name"
    t.text "about"
    t.string "address"
    t.string "phone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "website"
    t.string "string"
    t.string "facebook"
    t.string "instagram"
    t.string "twitter"
    t.string "youtube"
    t.bigint "comuna_id"
    t.index ["comuna_id"], name: "index_communities_on_comuna_id"
  end

  create_table "community_mauls", force: :cascade do |t|
    t.string "name"
    t.bigint "community_id"
    t.bigint "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["community_id"], name: "index_community_mauls_on_community_id"
    t.index ["event_id"], name: "index_community_mauls_on_event_id"
  end

  create_table "comunas", force: :cascade do |t|
    t.string "name"
    t.text "about"
    t.string "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "map"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "start_date"
    t.datetime "final_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "facebook"
    t.string "other_link"
    t.bigint "comuna_id"
    t.index ["comuna_id"], name: "index_events_on_comuna_id"
  end

  create_table "maul_plans", force: :cascade do |t|
    t.bigint "community_id"
    t.bigint "site_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["community_id"], name: "index_maul_plans_on_community_id"
    t.index ["site_id"], name: "index_maul_plans_on_site_id"
  end

  create_table "mix_categories", force: :cascade do |t|
    t.string "title"
    t.bigint "category_id"
    t.bigint "community_id"
    t.bigint "site_id"
    t.bigint "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_mix_categories_on_category_id"
    t.index ["community_id"], name: "index_mix_categories_on_community_id"
    t.index ["event_id"], name: "index_mix_categories_on_event_id"
    t.index ["site_id"], name: "index_mix_categories_on_site_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "nickname"
    t.date "birthdate"
    t.text "about_me"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "site_mauls", force: :cascade do |t|
    t.string "name"
    t.bigint "site_id"
    t.bigint "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_site_mauls_on_event_id"
    t.index ["site_id"], name: "index_site_mauls_on_site_id"
  end

  create_table "sites", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "map"
    t.string "phone"
    t.text "about"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "link"
    t.string "facebook"
    t.string "instagram"
    t.string "twitter"
    t.string "youtube"
    t.bigint "comuna_id"
    t.index ["comuna_id"], name: "index_sites_on_comuna_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "communities", "comunas"
  add_foreign_key "community_mauls", "communities"
  add_foreign_key "community_mauls", "events"
  add_foreign_key "events", "comunas"
  add_foreign_key "maul_plans", "communities"
  add_foreign_key "maul_plans", "sites"
  add_foreign_key "mix_categories", "categories"
  add_foreign_key "mix_categories", "communities"
  add_foreign_key "mix_categories", "events"
  add_foreign_key "mix_categories", "sites"
  add_foreign_key "site_mauls", "events"
  add_foreign_key "site_mauls", "sites"
  add_foreign_key "sites", "comunas"
end
