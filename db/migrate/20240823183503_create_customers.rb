class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :customer_name
      t.string :service_address
      t.string :phone1
      t.string :phone2

      t.timestamps
    end
  end
end
