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

ActiveRecord::Schema.define(version: 20180419085026) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string "judul"
    t.string "lokasi"
    t.string "keterangan"
    t.decimal "harga"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.string "ticket"
    t.string "ticket1"
    t.decimal "harga1"
    t.string "ticket2"
    t.decimal "harga2"
    t.string "ticket3"
    t.decimal "harga3"
    t.string "ticket4"
    t.decimal "harga4"
    t.string "ticket5"
    t.decimal "harga5"
    t.string "ticket6"
    t.decimal "harga6"
    t.string "ticket7"
    t.decimal "harga7"
    t.datetime "tanggal"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "provider"
    t.string "uid"
    t.string "name"
    t.string "token"
    t.string "secret"
    t.string "profile_image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
