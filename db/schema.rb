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

ActiveRecord::Schema[7.0].define(version: 2024_08_23_183613) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "charges", force: :cascade do |t|
    t.bigint "work_order_id", null: false
    t.string "fuel_surcharge"
    t.string "hhc"
    t.string "tax"
    t.string "finance_charge"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["work_order_id"], name: "index_charges_on_work_order_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "customer_name"
    t.string "service_address"
    t.string "phone1"
    t.string "phone2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "labors", force: :cascade do |t|
    t.bigint "work_order_id", null: false
    t.string "labor_hours"
    t.string "rate_per_hour"
    t.string "total_labor_cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["work_order_id"], name: "index_labors_on_work_order_id"
  end

  create_table "parts", force: :cascade do |t|
    t.string "part_number"
    t.string "description"
    t.string "unit_cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payments", force: :cascade do |t|
    t.bigint "work_order_id", null: false
    t.string "payment_method"
    t.string "payment_amount"
    t.string "payment_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["work_order_id"], name: "index_payments_on_work_order_id"
  end

  create_table "work_order_parts", force: :cascade do |t|
    t.bigint "part_id", null: false
    t.string "qty"
    t.string "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["part_id"], name: "index_work_order_parts_on_part_id"
  end

  create_table "work_orders", force: :cascade do |t|
    t.string "date_received"
    t.string "date_scheduled"
    t.string "order_taken_by"
    t.string "tech"
    t.string "service_request"
    t.string "instructions"
    t.string "equipment_serial_number"
    t.string "equipment_size"
    t.string "equipment_tank_percentage"
    t.string "equipment_meter_reading"
    t.string "leak_test_start_time"
    t.string "leak_test_end_time"
    t.string "leak_test_starting_psi"
    t.string "leak_test_ending_psi"
    t.string "leak_test_starting_wc"
    t.string "leak_test_ending_wc"
    t.string "time_started"
    t.string "time_completed"
    t.string "total_materials"
    t.string "total_amount_due"
    t.bigint "customer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_work_orders_on_customer_id"
  end

  add_foreign_key "charges", "work_orders"
  add_foreign_key "labors", "work_orders"
  add_foreign_key "payments", "work_orders"
  add_foreign_key "work_order_parts", "parts"
  add_foreign_key "work_orders", "customers"
end
