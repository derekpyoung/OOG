class CreateWorkOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :work_orders do |t|
      t.string :date_received
      t.string :date_scheduled
      t.string :order_taken_by
      t.string :tech
      t.string :service_request
      t.string :instructions
      t.string :equipment_serial_number
      t.string :equipment_size
      t.string :equipment_tank_percentage
      t.string :equipment_meter_reading
      t.string :leak_test_start_time
      t.string :leak_test_end_time
      t.string :leak_test_starting_psi
      t.string :leak_test_ending_psi
      t.string :leak_test_starting_wc
      t.string :leak_test_ending_wc
      t.string :time_started
      t.string :time_completed
      t.string :total_materials
      t.string :total_amount_due
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
