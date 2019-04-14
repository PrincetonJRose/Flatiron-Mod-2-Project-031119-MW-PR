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

ActiveRecord::Schema.define(version: 2019_04_14_165031) do

  create_table "genders", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orientations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pronouns", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "resouce_genders", force: :cascade do |t|
    t.integer "gender_id"
    t.integer "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gender_id"], name: "index_resouce_genders_on_gender_id"
    t.index ["resource_id"], name: "index_resouce_genders_on_resource_id"
  end

  create_table "resource_orientations", force: :cascade do |t|
    t.integer "orientation_id"
    t.integer "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["orientation_id"], name: "index_resource_orientations_on_orientation_id"
    t.index ["resource_id"], name: "index_resource_orientations_on_resource_id"
  end

  create_table "resource_services", force: :cascade do |t|
    t.integer "service_id"
    t.integer "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resource_id"], name: "index_resource_services_on_resource_id"
    t.index ["service_id"], name: "index_resource_services_on_service_id"
  end

  create_table "resources", force: :cascade do |t|
    t.string "name"
    t.string "number"
    t.string "url"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "rating"
    t.text "content"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_genders", force: :cascade do |t|
    t.integer "user_id"
    t.integer "gender_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gender_id"], name: "index_user_genders_on_gender_id"
    t.index ["user_id"], name: "index_user_genders_on_user_id"
  end

  create_table "user_orientations", force: :cascade do |t|
    t.integer "user_id"
    t.integer "orientation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["orientation_id"], name: "index_user_orientations_on_orientation_id"
    t.index ["user_id"], name: "index_user_orientations_on_user_id"
  end

  create_table "user_pronouns", force: :cascade do |t|
    t.integer "user_id"
    t.integer "pronoun_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pronoun_id"], name: "index_user_pronouns_on_pronoun_id"
    t.index ["user_id"], name: "index_user_pronouns_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password"
    t.date "birthdate"
    t.string "city"
    t.string "state"
    t.text "bio"
    t.boolean "hidden", default: false
    t.boolean "verified", default: false
    t.boolean "admin", default: false
    t.boolean "moderator", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

end
