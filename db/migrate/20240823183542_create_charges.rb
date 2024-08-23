class CreateCharges < ActiveRecord::Migration[7.0]
  def change
    create_table :charges do |t|
      t.references :work_order, null: false, foreign_key: true
      t.string :fuel_surcharge
      t.string :hhc
      t.string :tax
      t.string :finance_charge

      t.timestamps
    end
  end
end
