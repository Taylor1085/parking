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

ActiveRecord::Schema.define(version: 2019_10_02_233323) do

  create_table "drivers", force: :cascade do |t|
    t.string "name"
    t.integer "phoneNum"
    t.integer "ticket_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ticket_id"], name: "index_drivers_on_ticket_id"
  end

  create_table "payments", force: :cascade do |t|
    t.integer "fee"
    t.integer "driver_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["driver_id"], name: "index_payments_on_driver_id"
  end

  create_table "tickets", force: :cascade do |t|
    t.integer "ticketNum"
    t.date "date"
    t.string "violation"
    t.string "street"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "drivers", "tickets"
  add_foreign_key "payments", "drivers"
end
