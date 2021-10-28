# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_10_27_155621) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "book_clubs", force: :cascade do |t|
    t.string "name", null: false
    t.string "location", null: false
    t.integer "maximum_membership_count"
  end

  create_table "members", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "email", null: false
    t.string "favorite_book"
    t.boolean "leader", null: false
    t.text "bio"
  end

  create_table "signups", force: :cascade do |t|
    t.bigint "member_id", null: false
    t.bigint "book_club_id", null: false
    t.index ["book_club_id"], name: "index_signups_on_book_club_id"
    t.index ["member_id"], name: "index_signups_on_member_id"
  end

end
