class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.references :work_order, null: false, foreign_key: true
      t.string :payment_method
      t.string :payment_amount
      t.string :payment_date

      t.timestamps
    end
  end
end
