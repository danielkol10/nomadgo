# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_12_19_135726) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.string "internet"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "weather"
    t.string "image"
    t.string "country"
    t.integer "price", default: 0
    t.string "lat"
    t.string "long"
    t.datetime "weather_updated_at"
    t.string "population"
    t.text "why_love"
    t.string "housing_cost"
    t.string "food_cost"
    t.string "transportation_cost"
    t.string "community"
    t.string "facebook_groups"
    t.string "meetups"
    t.string "average_speed_dl"
    t.string "average_speed_up"
    t.string "environment_quality"
    t.string "water_quality"
    t.string "air_quality"
    t.string "work_places"
    t.string "cafes"
    t.string "coworking"
    t.string "activities"
    t.string "nightlife"
    t.string "outdoor"
    t.string "safety"
    t.string "crime_level"
    t.string "daylight_safety"
    t.string "night_safety"
    t.string "tolerance"
    t.string "racial_tolerance"
    t.string "lgbt_tolerance"
    t.string "walkability"
    t.string "walkability_comfort"
    t.string "healthcare"
    t.string "medical_staff"
    t.string "medical_equipment"
    t.string "healthcare_centers"
    t.string "english_speaking"
    t.string "english_speaking_percent"
    t.index ["price"], name: "index_cities_on_price"
  end

  create_table "guides", force: :cascade do |t|
    t.string "title"
    t.bigint "city_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city_id"], name: "index_guides_on_city_id"
  end

  create_table "pros_cons", force: :cascade do |t|
    t.bigint "city_id", null: false
    t.string "name"
    t.string "pro_or_con"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city_id"], name: "index_pros_cons_on_city_id"
  end

  add_foreign_key "guides", "cities"
  add_foreign_key "pros_cons", "cities"
end
