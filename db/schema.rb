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

ActiveRecord::Schema.define(version: 20171105233714) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image1_file_name"
    t.string "image1_content_type"
    t.integer "image1_file_size"
    t.datetime "image1_updated_at"
    t.string "image2_file_name"
    t.string "image2_content_type"
    t.integer "image2_file_size"
    t.datetime "image2_updated_at"
    t.string "image3_file_name"
    t.string "image3_content_type"
    t.integer "image3_file_size"
    t.datetime "image3_updated_at"
    t.string "image4_file_name"
    t.string "image4_content_type"
    t.integer "image4_file_size"
    t.datetime "image4_updated_at"
    t.string "image5_file_name"
    t.string "image5_content_type"
    t.integer "image5_file_size"
    t.datetime "image5_updated_at"
    t.string "image6_file_name"
    t.string "image6_content_type"
    t.integer "image6_file_size"
    t.datetime "image6_updated_at"
    t.string "name"
    t.string "age"
    t.text "description"
    t.text "question1"
    t.text "question2"
    t.text "question3"
    t.text "question4"
    t.text "question5"
    t.text "question6"
    t.text "question7"
    t.text "question8"
    t.text "question9"
    t.text "question10"
    t.text "question11"
    t.text "question12"
    t.text "question13"
    t.text "question14"
    t.text "question15"
    t.text "question16"
    t.text "question17"
    t.text "question18"
    t.text "question19"
    t.text "question20"
    t.text "question21"
    t.text "address"
    t.decimal "lat", precision: 10, scale: 6
    t.decimal "lng", precision: 10, scale: 6
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
