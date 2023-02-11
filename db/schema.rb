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

ActiveRecord::Schema.define(version: 2023_02_11_104537) do

  create_table "ensembles", force: :cascade do |t|
    t.string "name"
    t.string "grade_level"
  end

  create_table "notes", force: :cascade do |t|
    t.string "note"
    t.integer "piece_id"
  end

  create_table "performances", force: :cascade do |t|
    t.datetime "date_of_performance"
    t.integer "piece_id"
  end

  create_table "pieces", force: :cascade do |t|
    t.string "title"
    t.string "composer"
    t.integer "number_of_players"
    t.string "genre"
    t.integer "difficulty"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
