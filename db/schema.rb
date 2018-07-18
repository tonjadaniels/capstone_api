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

ActiveRecord::Schema.define(version: 2018_07_02_210948) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "measurements", force: :cascade do |t|
    t.string "name"
    t.float "height"
    t.float "chest"
    t.float "waist"
    t.float "hips"
    t.float "thigh"
    t.float "calf"
    t.float "inseam"
    t.float "upper_arm_circumference"
    t.float "arm_length"
    t.float "shoulder_to_shoulder_width"
    t.float "armpit_to_waist"
    t.float "waist_to_hip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "patterns", force: :cascade do |t|
    t.float "yard"
    t.string "fabric"
    t.string "clothing"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "measurement_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
  end

end
