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

ActiveRecord::Schema.define(version: 2020_08_16_231807) do

  create_table "audio_files", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.integer "user_id"
  end

  create_table "polls", force: :cascade do |t|
    t.string "title"
    t.integer "audio_file_a_id"
    t.integer "audio_file_b_id"
    t.integer "creator_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.integer "reputation"
  end

  create_table "votes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "poll_id"
    t.integer "answer"  #should prob be audio_file
  end

end
